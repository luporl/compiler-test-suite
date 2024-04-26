#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_aclt()
{
  svbool_t pg,pg1,pg2,pg3,pg4,pg5,pg6;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  pg1 = svaclt_f32( pg,r4a,r4b); 
  pg2 = svaclt_f64( pg,r8a,r8b);
  dummy(pg1,pg2);
}
void test_aclt_n()
{  
  svbool_t pg,pg1,pg2,pg3,pg4,pg5,pg6;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  pg1 = svaclt_n_f32( pg,r4a,r4); 
  pg2 = svaclt_n_f64( pg,r8a,r8); 
  dummy(pg1,pg2);
  pg3 = svaclt_n_f32( pg,r4a,4); 
  pg4 = svaclt_n_f64( pg,r8a,8); 
  pg5 = svaclt_n_f32( pg,r4a,0); 
  pg6 = svaclt_n_f64( pg,r8a,0); 
  dummy(pg3,pg4,pg5,pg6);
}
void dummy() {};

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif
