#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_rsqrts()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svrsqrts_f32( r4a, r4b );
  vr8 = svrsqrts_f64( r8a, r8b );
  dummy(vr4,vr8);
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
