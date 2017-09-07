/*      fastrts62x64x.h         1/17/03     as alternate entry labels      */

extern double adddp  ( double x , double y ) ;
extern float  addsp  ( float  x , float  y ) ;

extern double divdp ( double x, double y ) ;
extern float  divsp ( float  x, float  y ) ;

extern int dpint ( double x ) ;
extern int spint ( float  x ) ;

extern long int dplong ( double x ) ;
extern long int splong ( float  x ) ;

extern unsigned int dpuint ( double x ) ;
extern unsigned int spuint ( float  x ) ;

extern unsigned long int dpulong ( double x ) ;
extern unsigned long int spulong ( float  x ) ;

extern double intdp ( int x ) ;
extern float  intsp ( int x ) ;

extern double longdp ( long int x ) ;
extern float  longsp ( long int x ) ;

extern double uintdp ( unsigned int x ) ;
extern float  uintsp ( unsigned int x ) ;

extern double ulongdp ( unsigned long int x ) ;
extern float  ulongsp ( unsigned long int x ) ;

extern double mpydp ( double x, double y ) ;
extern float  mpysp ( float  x, float  y ) ;

extern double recipd  ( double x ) ;    /* not defined in current rts */
extern float  recipf  ( float  x ) ;    /* not defined in current rts */

extern double recipdp ( double x ) ;
extern float  recipsp ( float  x ) ;

extern double subdp ( double x, double y ) ;
extern float  subsp ( float  x, double y ) ; 

extern double spdp ( float  x ) ;
extern float  dpsp ( double x ) ;
