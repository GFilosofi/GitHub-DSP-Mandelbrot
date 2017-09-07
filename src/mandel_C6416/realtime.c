/******************************************************************************
* FILENAME: REALTIME.C
*
* Real-time tutorial code 
*
* This file should be used in conjunction with the realtime.pjt project 
*
* It consists of a loop which performs an FIR filter and three interrupt
* service routines (ISRs). Of the three ISRs, one is not time-critical
* (ISR3) and can be held off indefinitely. Another, ISR1, is extremely
* time-critical and must be serviced, even while in another ISR. ISR2
* is time-critical, but will not preempt ISR1.
*
*     Code              Priority        Background/foreground  Interruptible?
*     ---------         --------------  ---------------------  --------------
*     main loop         lowest          background             Yes
*     ISR3              second lowest   background             Yes
*     ISR2              second highest  foreground             Yes
*     ISR1              highest         foreground             No
* 
******************************************************************************/

/*------------------------------------------------------------------------------*/
/* CSL/RTS includes                                                             */
/*------------------------------------------------------------------------------*/
#include <csl.h>
#include <csl_irq.h>
#include <csl_timer.h> 
#include "fastrts62x64x.h"
#include "realtime.h"
#include "c6x.h"

#define Nx        128  /* number of pixel in the horizontal dim. */
#define Ny        128  /* number of pixel in the vertical dim. */
#define IMAX      40   /* maximum number of iteration for divergence criterion */

#undef FASTRTS
#define FASTRTS

typedef struct ComplexTag {
  float R,I;
} Complex;

unsigned int timer0value=0;
unsigned int timer1value=0;
unsigned int timer2value=0;

/*
extern float  addsp  ( float  x , float  y );
extern float  mpysp ( float  x, float  y ) ;
*/
/* function protopypes */
Uint32 mandsub(Complex c, Uint32 imax, Uint32 thres);
void mandelinit(void);
void SetupInterrupts(void);
void ConfigureAllTimers(void);
void intConfig(void);

/*----------------------------------------------------------------------------
* Global variables which monitor interrupt service routine (ISR) activity.
*----------------------------------------------------------------------------*/
typedef enum { NoIsrActive, Isr1Active, Isr2Active, Isr3Active} ISR_LIST;
static volatile ISR_LIST WhatIsrActive = NoIsrActive;
static volatile uint32 Isr0 = 0;
static volatile uint32 Isr1 = 0;
static volatile uint32 Isr2 = 0;

/*-----------------------------------------------------------------------------
* Global variables used by main loop
*----------------------------------------------------------------------------*/
#define FIR_TAPS            16

const int16 AvgFirCoeff[FIR_TAPS] =
{
    2048,   2048,   2048,   2048,
    2048,   2048,   2048,   2048,
    2048,   2048,   2048,   2048,
    2048,   2048,   2048,   2048,    
};

//Set the Mandelbrot plane region to be displayed
float xmin = -2.2;
float xmax = 0.5;
float ymin = -1.5;
float ymax = 1.5;

/*
float xmin = -1.395;
float xmax = -1.122;
float ymin = 0;
float ymax = 0.303;
*/

static float xspan; 
static float yspan;   
static Uint32 image[Nx][Ny];

/*--------------------------------------------------------------------------*/
/* Initialize CSL and open the next available DMA channel for data transfer */
/*--------------------------------------------------------------------------*/ 
int main(void)
{
  Uint32 j,k;
  Complex z;

//    volatile int KeepRunning = 1;
    volatile int KeepRunning = 0;
    static int16 x[FIR_TAPS];
    int i;            

    CSL_init(); 
    ConfigureAllTimers();

    for (i = 0; i < FIR_TAPS; i++)
        x[i] = 0;

    /*---- Setting up interrupts is processor-specific ------------------*/
    SetupInterrupts();

    /*---- When we're not taking interrupts, perform an FIR -----------------*/
    while ( KeepRunning )       /* Run until the user sets KeepRunning to 0  */
    {
        int16 Result;
        x[0] = InputData();
        Result = Fir32(x, AvgFirCoeff) >> 15;
        OutputData(Result);
    }

  /* begin mandel app. */
  mandelinit();

  for(j=0;j<Nx;j++)
  {
	#ifdef FASTRTS
    z.R = addsp(xmin,(float)(xspan*j));
	#else
    z.R = xmin + xspan*j;
	#endif
    for(k=0;k<Ny;k++)
    {
      #ifdef FASTRTS
      z.I = addsp(ymin,(float)(yspan*k));
	  #else
      z.I = ymin + yspan*k;
	  #endif
      image[j][k] = mandsub(z,IMAX,4);
    }
  }

  for(j=0;j<Nx;j++)
  {
    image[j][127] = 0x00005555;
  }


  printf("\nIMAGE COMPLETED\n");
  exit(0);

}

/*---------------------------------------------------------------------------
 * FUNCTION NAME: mandelinit
 * DESCRIPTION: Mandelbrot Set generator init
 *---------------------------------------------------------------------------*/
void mandelinit(void)
{
  Uint32 j,k;
  #ifdef FASTRTS
  xspan = divsp(xmax-xmin,Nx);
  yspan = divsp(ymax-ymin,Ny);
  #else
  xspan = (xmax-xmin)/Nx;
  yspan = (ymax-ymin)/Ny;
  #endif
  for(j=0;j<Nx;j++)
  {
    for(k=0;k<Ny;k++)
    image[j][k] = 0;
  }
}


/*---------------------------------------------------------------------------
 * FUNCTION NAME: mandsub
 * DESCRIPTION: Mandelbrot Set generator sub
 * PARAMETERS: pixel position (c) and general algorithm convergence criteria
 * RETURNS: Returns the pixel value
 *---------------------------------------------------------------------------*/
Uint32 mandsub(Complex c, Uint32 imax, Uint32 sqthres)
{
  Uint32 i = 0;
  float p1 = 0;
  float p2 = 0;
  float p3;
  Complex z = c;
  #ifdef FASTRTS
  while((addsp(p1,p2) < sqthres) && (i < imax))	// |z|^2 < sqthres AND i < imax
  {
    p1 = mpysp(z.R,z.R);
    p2 = mpysp(z.I,z.I);
    p3 = mpysp(z.R,z.I);
	p3 = mpysp(p3,2.0);
    /* z = z*z + c */
    z.R = addsp(p1-p2,c.R);
    z.I = addsp(p3,c.I);
    i++;
  }
  #else
  while((p1 + p2 < sqthres) && (i < imax))	// |z|^2 < sqthres AND i < imax
  {
    p1 = z.R*z.R;
    p2 = z.I*z.I;
    p3 = 2*z.R*z.I;
    /* z = z*z + c */
    z.R = p1 - p2 + c.R;
    z.I = p3 + c.I;
    i++;
  }
  #endif
  return(i);
}

/*-----------------------------------------------------------------------------
* int16 InputData(void)
*
* Pretend to input data from some external source like an A/D, but actually
* just generate it randomly. Note that this function is not re-enterant.
*----------------------------------------------------------------------------*/
int16 InputData(void)
{
    static int16 Seed = 21845;
    return ( PseudoRand16(&Seed) );
}

/*-----------------------------------------------------------------------------
* void OutputData(int16 Data)
*
* Pretend to output data to some external source like a D/A, but actually
* just write it to an on-chip memory location.
*----------------------------------------------------------------------------*/
static int16 OutputDataMem;
volatile int16 * OutputDataPtr = &OutputDataMem;

void OutputData(int16 Data)
{
    *OutputDataPtr = Data;
}

/*-----------------------------------------------------------------------------
* int32 Fir32(int16 x[], int16 coeff[])
*
* Calculate the Finite Impulse Response (FIR)
* The GUARD_BITS should be integer(ln(TAPS)/ln(2))
*----------------------------------------------------------------------------*/
const int GUARD_BITS = 4;

int32 Fir32(int16 x[], const int16 coeff[])
{
    int32 sum;
    int i;

    i = FIR_TAPS - 1;
    sum = ( (int32)x[i] * (int32)coeff[i] ) >> GUARD_BITS;
    for (i-- ; i >= 0; i--)
    {
        sum += ( (int32)x[i] * (int32)coeff[i] ) >> GUARD_BITS;
        x[i+1] = x[i];
    }
    return ( sum );
}

/*-----------------------------------------------------------------------------
* int16 PseudoRand(void)
*
* Use a linear congruential psuedo random generator, which is very fast.
* The basic calculation is:
* Rndnum(n) = (  (Rndnum(n-1) * MULT) + INC  ) modulo M
*  MULT is determined by number theory that I don't pretend to understand,
*  but supposedly the last 3 digits (in decimal) 821, 621, 421, or 221.
*  INC is a prime number.
*  A good initial seed value (i.e. Rndnum(0) is 21845, which is just 65535
*  divided by 3.
*----------------------------------------------------------------------------*/
const int16 Mult = 31821;
const int16 Inc = 13849;
int16 PseudoRand16(int16 * Seed)
{
    *Seed = (  (int32)*Seed * Mult + Inc ) & 0xFFFF;
    return (*Seed);
}

/*-----------------------------------------------------------------------------
* void PerformIsr1(void)
*
* Indicate that Isr1 is being performed, and increment the number of times
* it has been performed. Every so often, take a longer time than normal
* to introduce some variability into the system timing.
*----------------------------------------------------------------------------*/
interrupt void PerformIsr1(void)
{
    WhatIsrActive = Isr1Active;

    Isr0++;
    if ((Isr0 % 8) == 0)
        TakeALongTime();
    WhatIsrActive = NoIsrActive;
    timer0value++;
}



/*-----------------------------------------------------------------------------
* void PerformIsr2(void)
*
* Indicate that Isr2 is being performed, and increment the number of times
* it has been performed. Every so often, take a longer time than normal
* to introduce some variability into the system timing.
*----------------------------------------------------------------------------*/
interrupt void PerformIsr2(void)
{
    WhatIsrActive = Isr2Active;

    Isr1++;
    if ((Isr1 % 8) == 0)
        TakeALongTime();

    WhatIsrActive = NoIsrActive;
    timer1value++;
}

/*-----------------------------------------------------------------------------
* void PerformIsr3(void)
*
* Indicate that Isr3 is being performed, and increment the number of times
* it has been performed. Every so often, take a longer time than normal
* to introduce some variability into the system timing.
*----------------------------------------------------------------------------*/
interrupt void PerformIsr3(void)
{
    WhatIsrActive = Isr3Active;

    Isr2++;
    if ((Isr2 % 8) == 0)
        TakeALongTime();

    WhatIsrActive = NoIsrActive;
    timer2value++;
}

/*-----------------------------------------------------------------------------
* void TakeALongTime(void)
*
* This function does nothing useful - it just wastes time.
*----------------------------------------------------------------------------*/
void TakeALongTime(void)
{
    volatile uint16 Output;
    uint16 i;

    for (i = 0; i < 0x1; i++)
        Output = i;
}

/* ----------------------------------------------------------------------*/
/*           Copyright (C) 2001 Texas Instruments Incorporated.          */
/*                           All Rights Reserved                         */
/*-----------------------------------------------------------------------*/
void SetupInterrupts(void)
{
    IRQ_resetAll();                       /* Reset all maskable interrupts  */
    IRQ_enable(IRQ_EVT_TINT0);            /* Enable timer0 -> CPU interrupt */
    IRQ_enable(IRQ_EVT_TINT1);            /* Enable timer1 -> CPU interrupt */
    IRQ_map(IRQ_EVT_TINT2,13);            /* Enable timer2 -> CPU interrupt */
    IRQ_enable(IRQ_EVT_TINT2);            /* Enable timer1 -> CPU interrupt */
    IRQ_nmiEnable();                      /* Enable non-maskable interrupt  */
//    IRQ_globalEnable();                   /* Globally enable all interrupts */
} /* end SetupInterrupts() */

void ConfigureAllTimers(void)
{
    TIMER_Handle timer0;
    TIMER_Handle timer1;
    TIMER_Handle timer2;

    timer0 = TIMER_open(TIMER_DEV0,0);
    TIMER_configArgs( timer0, 0x000002c0, 0x01000, 0x00000000);

    timer1 = TIMER_open(TIMER_DEV1,0);
    TIMER_configArgs( timer1, 0x000002c0, 0x00100, 0x00000000);

    timer2 = TIMER_open(TIMER_DEV2,0);
    TIMER_configArgs( timer2, 0x000002c0, 0x10000, 0x00000000);  

} /* end ConfigureAllTimers() */

