#include  <stdio.h>

struct tag_s {
             int       mi ;
             char      mc ;
             short int msi ;
             }  ;
union  tag_u {
             int       mi ;
             char      mc ;
             short int msi ;
             }  ;
enum   tag_e {e_a, e_b, e_c, e_d} ;
int func6(void *pv, int *pi);
int func5(struct tag_s v_struct, union  tag_u v_union, enum   tag_e v_enum);
#ifdef NO_LONG_DOUBLE
int func4(float f, double d, double ld);
#else
int func4(float f, double d, long double ld);
#endif
int main()
{
  char                   c     ,*pc    ;
  short int              si    ,*psi   ;
  int                    i     ,*poi   ;
  long int               li    ,*pli   ;
  long long int          lli   ,*plli  ;
  unsigned char          uc    ,*puc   ;
  unsigned short int     usi   ,*pusi  ;
  unsigned int           ui    ,*pui   ;
  unsigned long int      uli   ,*puli  ;
  unsigned long long int ulli  ,*pulli ;
  signed char            s_c   ,*ps_c  ;
  signed short int       s_si  ,*ps_si ;
  signed int             s_i   ,*ps_i  ;
  signed long int        s_li  ,*ps_li ;
  signed long long int   s_lli ,*ps_lli ;
  float                  f     ,*pf    ;
  double                 d     ,*pd    ;
#ifdef NO_LONG_DOUBLE
  double            ld    ,*pld   ;
#else
  long double            ld    ,*pld   ;
#endif
  struct tag_s           v_struct ,*pv_struct ;
  union  tag_u           v_union  ,*pv_union  ;
  enum   tag_e           v_enum   ,*pv_enum   ;
  void                  *pv       ,**ppv      ;
  int                   *pi       ,**popi      ;

  int func1(char c,
            short int  si,
            int i,
            long int li,
            long long int lli) ;
  int func2(unsigned char uc,
            unsigned short int usi,
            unsigned int ui,
            unsigned long int uli,
            unsigned long long int ulli) ;
  int func3(signed char s_c,
            signed short int s_si,
            signed int s_i,
            signed long int s_li,
            signed long long int s_lli) ;

  c   = 'a'          ;
  si  = 1            ;
  i   = 1            ;
  li  = 1            ;
  lli = 1            ;
  uc   = 'a'         ;
  usi  = 1           ;
  ui   = 1           ;
  uli  = 1           ;
  ulli = 1           ;
  s_c   = '/'        ;
  s_si  = 1          ;
  s_i   = 1          ;
  s_li  = 1          ;
  s_lli = 1          ;
  f    = 1.0         ;
  d    = 1.0         ;
  ld   = 1.0         ;
  v_struct.mi  = 1   ;
  v_struct.mc  = 'a' ;
  v_struct.msi = 1   ;
  v_union.mi   = 1   ;
  v_enum       = e_a ;
  pv           = &c  ;
  pi           = &i  ;

  printf("********** TEST START **********\n");

  pc   = &c                         ;
  psi  = &si                        ;
  poi  = &i                         ;
  pli  = &li                        ;
  plli = &lli                       ;
  func1( *pc,*psi,*poi,*pli,*plli ) ;
  puc   = &uc                           ;
  pusi  = &usi                          ;
  pui   = &ui                           ;
  puli  = &uli                          ;
  pulli = &ulli                         ;
  func2( *puc,*pusi,*pui,*puli,*pulli ) ;
  ps_c = &s_c                                ;
  ps_si  = &s_si                             ;
  ps_i   = &s_i                              ;
  ps_li  = &s_li                             ;
  ps_lli = &s_lli                            ;
  func3( *ps_c,*ps_si,*ps_i,*ps_li,*ps_lli ) ;
  pf  = &f            ;
  pd  = &d            ;
  pld = &ld           ;
  func4(*pf,*pd,*pld) ;
  pv_struct = &v_struct               ;
  pv_union  = &v_union                ;
  pv_enum   = &v_enum                 ;
  func5(*pv_struct,*pv_union,*pv_enum);
  ppv  = &pv      ;
  popi = &pi      ;
  func6(*ppv,*popi);
  if (c != 'b')
      printf("***** 26 ***** N   G *****\n");
  if (i != 2  )
      printf("***** 27 ***** N   G *****\n");

  printf("********** TEST  END  **********\n");

}

int func1(
      char c,
      short int si,
      int i,
      long int li,
      long long int lli)
{
  int  flag = 0 ;

  if (c != 'a')
      {
      flag = 1 ;
      printf("***** 01 ***** N   G *****\n");
      }
  if (si != 1)
      {
      flag = 1 ;
      printf("***** 02 ***** N   G *****\n");
      }
  if (i != 1)
      {
      flag = 1 ;
      printf("***** 03 ***** N   G *****\n");
      }
  if (li != 1)
      {
      flag = 1 ;
      printf("***** 04 ***** N   G *****\n");
      }
  if (lli != 1)
      {
      flag = 1 ;
      printf("***** 05 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** FUNC1 ** O   K *****\n");

  return 0;
}

int func2(
      unsigned char uc,
      unsigned short int usi,
      unsigned int ui,
      unsigned long int uli,
      unsigned long long int ulli)
{
  int  flag = 0 ;

  if (uc != 'a')
      {
      flag = 1 ;
      printf("***** 06 ***** N   G *****\n");
      }
  if (usi != 1)
      {
      flag = 1 ;
      printf("***** 07 ***** N   G *****\n");
      }
  if (ui != 1)
      {
      flag = 1 ;
      printf("***** 08 ***** N   G *****\n");
      }
  if (uli != 1)
      {
      flag = 1 ;
      printf("***** 09 ***** N   G *****\n");
      }
  if (ulli != 1)
      {
      flag = 1 ;
      printf("***** 10 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** FUNC2 ** O   K *****\n");

  return 0;
}

int func3(
      signed char sc,
      signed short int ssi,
      signed int si,
      signed long int sli,
      signed long long int slli)
{
  int  flag = 0 ;

  if (sc != '/')
      {
      flag = 1 ;
      printf("***** 11 ***** N   G *****\n");
      }
  if (ssi != 1)
      {
      flag = 1 ;
      printf("***** 12 ***** N   G *****\n");
      }
  if (si != 1)
      {
      flag = 1 ;
      printf("***** 13 ***** N   G *****\n");
      }
  if (sli != 1)
      {
      flag = 1 ;
      printf("***** 14 ***** N   G *****\n");
      }
  if (slli != 1)
      {
      flag = 1 ;
      printf("***** 15 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** FUNC3 ** O   K *****\n");

  return 0;
}

#ifdef NO_LONG_DOUBLE
int func4(float f, double d, double ld)
#else
int func4(float f, double d, long double ld)
#endif
{
  int  flag = 0 ;

  if (f != 1.0)
      {
      flag = 1 ;
      printf("***** 16 ***** N   G *****\n");
      }
  if (d != 1.0)
      {
      flag = 1 ;
      printf("***** 17 ***** N   G *****\n");
      }
  if (ld != 1.0)
      {
      flag = 1 ;
      printf("***** 18 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** FUNC4 ** O   K *****\n");

  return 0;
}

int func5(struct tag_s v_struct, union tag_u v_union, enum tag_e v_enum)
{
  int  flag = 0 ;

  if (v_struct.mi  != 1)
      {
      flag = 1 ;
      printf("***** 19 ***** N   G *****\n");
      }
  if (v_struct.mc  != 'a')
      {
      flag = 1 ;
      printf("***** 20 ***** N   G *****\n");
      }
  if (v_struct.msi != 1)
      {
      flag = 1 ;
      printf("***** 21 ***** N   G *****\n");
      }
  if (v_union.mi   != 1)
      {
      flag = 1 ;
      printf("***** 22 ***** N   G *****\n");
      }
  if (v_enum       != e_a)
      {
      flag = 1 ;
      printf("***** 23 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** FUNC5 ** O   K *****\n");

  return 0;
}

int func6(void *pv, int *pi)
{
  int  flag = 0 ;

  if (*((char *)pv) != 'a')
      {
      flag = 1 ;
      printf("***** 24 ***** N   G *****\n");
      }
  if (*pi != 1 )
      {
      flag = 1 ;
      printf("***** 25 ***** N   G *****\n");
      }
  *((char *)pv) = 'b' ;
  *pi = 2 ;
  if (flag == 0)
      printf("***** FUNC6 ** O   K *****\n");

  return 0;
}
