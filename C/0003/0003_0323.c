#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
signed char i1;
signed short i2;
signed int i4;
signed long long i8;
unsigned char u1;
unsigned short u2;
unsigned int u4;
unsigned long long u8;
float r4;
double r8;
void test_insr()
{
  svbool_t pg;
  svint8_t vi1;
  svint16_t vi2;
  svint32_t vi4;
  svint64_t vi8;
  svuint8_t vu1;
  svuint16_t vu2;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  vi1 = svinsr_n_s8( i1a,i1);
  vi2 = svinsr_n_s16( i2a,i2);
  vi4 = svinsr_n_s32( i4a,i4); 
  vi8 = svinsr_n_s64( i8a,i8);
  vu1 = svinsr_n_u8( u1a,u1);
  vu2 = svinsr_n_u16( u2a,u2);
  vu4 = svinsr_n_u32( u4a,u4); 
  vu8 = svinsr_n_u64( u8a,u8);
  vr4 = svinsr_n_f32( r4a,r4); 
  vr8 = svinsr_n_f64( r8a,r8);
  dummy(vi1,	vi2,	vi4, vi8);
  dummy(vu1,	vu2,	vu4, vu8);
  dummy(vr4,	vr8);
}
void dummy() {}

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif
