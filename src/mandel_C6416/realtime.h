/******************************************************************************
* FILENAME: REALTIME.H
*
* Real-time tutorial code 
******************************************************************************/

/*---- Typedefs used throughout tutorial ------------------------------------*/
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
    
#if defined (__TMS320C27XX__) || defined (__TMS320C28XX__) || \
    defined (__TMS470__) || defined (_TMS320C5XX)
    /*-------------------------------------------------------------------------
    * The following is true for TMS320C27x, TMS320C28x, TMS320C54x, and TMS470R1x:
    *    signed short is 16-bits, 2s complement, -32768 to 32767
    *    unsigned short is 16-bits, binary, 0 to 65535
    *    signed long is 32-bits, 2s complement, -2147483648 to 2147483647
    *    unsigned long is 32-bits, binary, 0 to 4294967295
    *------------------------------------------------------------------------*/
    typedef short int16;
    typedef unsigned short uint16;
    typedef long int32;
    typedef unsigned long uint32;
#endif

#if defined (_TMS320C6X)
    /*------------------------------------------------------------------------
    * The following is true for TMS320C6x:
    *    signed short is 16-bits, 2s complement, -32768 to 32767
    *    unsigned short is 16-bits, binary, 0 to 65535
    *    signed int is 32-bits, 2s complement, -2147483648 to 2147483647
    *    unsigned int is 32-bits, binary, 0 to 4294967295
    *------------------------------------------------------------------------*/
    typedef short int16;
    typedef unsigned short uint16;
    typedef int int32;
    typedef unsigned int uint32;
#endif

/*---- Function prototypes --------------------------------------------------*/
int16 InputData(void);
void OutputData(int16 Data);
int32 Fir32(int16 x[], const int16 coeff[]); 
int16 PseudoRand16(int16 * Seed);
void PerformIsr1(void);
void PerformIsr2(void);
void PerformIsr3(void);
void TakeALongTime(void);
/* EOF */
