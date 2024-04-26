#include <stdio.h>
#include <stdlib.h>
#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
#endif

int main(void)
{
#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
  int i;

  double x[8] = { 1,  2,  3,  4,  5,  6,  7,  8 };
  double y[8] = { 9, 10, 11, 12, 13, 14, 15, 16 };
  double w[8];
  double res[8] = {11, -7, 15, -7, 19, -7, 23, -7};
  svbool_t pg = svptrue_b64();
  svfloat64_t vx = svld1_f64(pg, x);
  svfloat64_t vy = svld1_f64(pg, y);

  svfloat64_t vw = svcadd_f64_z(pg, vx, vy, 270);

  svst1_f64(pg, w, vw);

  for (i = 0; i < 8; i++) {
    if (w[i] != res[i]) {
      printf("NG: %d  %f %f\n", i, w[i], res[i]);
    }
  }
#endif
  printf("ok\n");
  return 0;
}
