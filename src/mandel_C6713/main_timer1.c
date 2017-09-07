/*
 * Copyright (C) 2003 Texas Instruments Incorporated
 * All Rights Reserved
 * This example uses a timer to generate interrupt at a specific period.
 * The timer event handler increments the event count and prints in stdout.
 */

#include <stdio.h>
#include <csl.h>
#include <csl_timer.h>
#include <csl_irq.h>

#define TIMER_CNT 100  /* Start count value */
#define Nx        128  /* number of pixel in the horizontal dim. */
#define Ny        128  /* number of pixel in the vertical dim. */
#define IMAX      40   /* maximum number of iteration for divergence criterion */

typedef struct ComplexTag {
  float R,I;
} Complex;

/* function protopypes */
Uint32 mandsub(Complex c, Uint32 imax, Uint32 thres);
void mandelinit(void);
void TimerEventHandler(void);
extern far void vectors();

static TIMER_Handle hTimer1;
static Uint32 TimerEventId;
static int cnt = 0;  

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

/* Timer control register (CTL)*/
static Uint32 TimerControl = TIMER_CTL_RMK(
	TIMER_CTL_INVINP_NO,	/* TINP inverter control(INVINP). Only affects operation if CLKSRC=0.
							TIMER_CTL_INVINP_NO  - Uninverted TINP drives timer
							TIMER_CTL_INVINP_YES - inverted TINP drives timer */
	TIMER_CTL_CLKSRC_CPUOVR4,	/* Timer input clock source (CLKSRC)
							TIMER_CTL_CLKSRC_CPUOVR4 - CPU clock /4           */
	TIMER_CTL_CP_PULSE,		/* Clock/pulse mode(CP)
							TIMER_CTL_CP_PULSE - Pulse mode. TSTAT is active one CPU clock after 
							the timer reaches the timer period. PWID determines when it goes inactive.*/
	TIMER_CTL_HLD_YES,		/* Hold(HLD). Counter may be read or written regardless of HLD value.
							TIMER_CTL_HLD_YES - Counter is disabled and held in current value.
							TIMER_CTL_HLD_NO - COunter is allowed to count.   */
	TIMER_CTL_GO_NO,		/* Go bit(GO). Resets and starts the timer counter.
							TIMER_CTL_GO_NO - No effects on the timer.
							TIMER_CTL_GO_YES - if HLD =1, the counter register is zeroed and begins counting on next clock. */
	TIMER_CTL_PWID_ONE,		/* Pulse width(PWID). Only used in pulse mode.
							TIMER_CTL_PWID_ONE - TSTAT goes inactive one timer input clock cycle after the timer counter value
							equals the timer period value.
							TIMER_CTL_PWID_TWO -  TSTAT goes inactive one timer input clock cycle after the timer counter value
							equals the timer period value.               */
	TIMER_CTL_DATOUT_0,		/* Data output (DATOUT).
							TIMER_CTL_DATOUT_0 - If FUNC  =0,the DATOUT is driven on TOUT. 
							TIMER_CTL_DATOUT_1 - If FUNC =1,The DATOUT is driven on TOUT after inversion by INVOUT.           */
	TIMER_CTL_INVOUT_NO,	/* TOUT inverter control (INVOUT) 
							TIMER_CTL_INVOUT_NO - Uninverted TSTAT drives TOUT
							TIMER_CTL_INVOUT_YES - Inverted TSTAT drives TOUT.*/
	TIMER_CTL_FUNC_GPIO		/* Function of TOUT pin(FUNC).
							TIMER_CTL_FUNC_GPIO - TOU is a general purpose output pin
							TIMER_CTL_FUNC_TOUT - TOUT is a timer output pin  */
);                 


/*---------------------------------------------------------------------------
 * FUNCTION NAME: main
 *---------------------------------------------------------------------------*/
void main(void)
{
  Uint32 j,k;
  Complex z;

  /* Initialize the chip support library, must when using CSL */
  CSL_init(); 

  /* Open TIMER1 device, and reset it to power-on default state */
  hTimer1 = TIMER_open(TIMER_DEV1, TIMER_OPEN_RESET);

  /* Obtain the event ID for the timer device */
  TimerEventId = TIMER_getEventId(hTimer1);

  IRQ_setVecs(vectors);     /* point to the IRQ vector table */
  IRQ_globalEnable();       /* Globally enable interrupts */ 
  IRQ_nmiEnable();          /* Enable NMI interrupt */   

  /* Map TIMER events to physical interrupt number */      
  IRQ_map(TimerEventId, 14);

  /* Reset the timer events */
  IRQ_reset(TimerEventId);

  /* Configure the timer devices */
  TIMER_configArgs(hTimer1,
    TimerControl, /* use predefined control value  */
    0x00000100,   /* set period                    */
    0x00000000    /* start count value at zero     */
  );

  /* Enable the timer events(events are disabled while resetting) */
  IRQ_enable(TimerEventId);

  /* Start the timers */
  //TIMER_start(hTimer1);

  //while(cnt <= TIMER_CNT); /* waiting for interrupt*/

  /* begin mandel app. */
  mandelinit();

  for(j=0;j<Nx;j++)
  {
    z.R = xmin + xspan*j;
    for(k=0;k<Ny;k++)
    {
      z.I = ymin + yspan*k;
      image[j][k] = mandsub(z,IMAX,4);
    }
  }

  for(j=0;j<Nx;j++)
  {
    image[j][127] = 0x00005555;
  }

  printf("\nIMAGE COMPLETED\n");
  TIMER_pause(hTimer1);
  TIMER_close(hTimer1);
  printf("\n Count : %3d ",cnt-TIMER_CNT);
  exit(0);
}


/*---------------------------------------------------------------------------
 * FUNCTION NAME: mandelinit
 * DESCRIPTION: Mandelbrot Set generator init
 *---------------------------------------------------------------------------*/
void mandelinit(void)
{
  Uint32 j,k;
  xspan = (xmax-xmin)/Nx;
  yspan = (ymax-ymin)/Ny;
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
  return(i);
}

/*---------------------------------------------------------------------------
 * FUNCTION NAME: TimerEventHandler
 * DESCRIPTION: Function called from TIMER1 ISR. Just increments the count by one each 
 * time it enters this function. Exit from the program after certain count value is reached.
 *---------------------------------------------------------------------------*/
void TimerEventHandler(void)
{
  /* process timer event here */
  cnt++;  

#if 0
  /* Exit from the program when certain count is reached */
  if (cnt > TIMER_CNT)
  {   
    TIMER_pause(hTimer1);
    TIMER_close(hTimer1);
    printf("\nTEST PASSED\n");
    exit(0);
  }
  printf("\n Count : %3d ",cnt);
#endif  
}

/*---------------------------------------------------------------------------
 * FUNCTION NAME: Interrupt Service Routine c_int14
 * DESCRIPTION: ISR to service TIMERINT1.
 * NOTE: vecs.asm must be modified to include c_int14 entry.
 *---------------------------------------------------------------------------*/
interrupt void c_int14(void)    
{
  TimerEventHandler();
  return;
} /* end c_int14 */
