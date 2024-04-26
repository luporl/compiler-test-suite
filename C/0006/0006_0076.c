#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif


void test_1(double *a, double *b, double *c, int n) {
  long long int i;
  long long int j=-1;
  for (i=0; i<N; i++) {
    j++;
    a[j] = b[j] + c[j];
  }
}

void test_2(double *a, double *b, double *c, int n) {
  int i;
  int j=-1;
  for (i=0; i<N; i++) {
    j++;
    a[j] = b[j] + c[j];
  }
}

void test_3(double *a, double *b, double *c, int n) {
  unsigned int i;
  unsigned int j=0;
  for (i=0; i<N; i++) {
    j++;
    a[j-1] = b[j-1] + c[j-1];
  }
}

void test_4(double *a, double *b, double *c, int n) {
  unsigned long long int i;
  unsigned long long int j=0;
  for (i=0; i<N; i++) {
    j++;
    a[j-1] = b[j-1] + c[j-1];
  }
}

#if !defined(ASM_ONLY)

void init(double *a, double *b, double *c, double *res) {
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    res[i] = b[i] + c[i];
  }
}


void check(double *a, double *b) {
  int i;
  for(i=0; i<N; i++) {
    if(a[i] != b[i]) {
      printf("NG\n");
    } 
  }
}

int main() {
  double a[N],b[N],c[N],res[N];
  
  init(a,b,c,res);
  printf("------ test1 -------\n");
  test_1(a,b,c,N);
  check(a,res);

  init(a,b,c,res);
  printf("------ test2 -------\n");
  test_2(a,b,c,N);
  check(a,res);

  init(a,b,c,res);
  printf("------ test3 -------\n");
  test_3(a,b,c,N);
  check(a,res);

  init(a,b,c,res);
  printf("------ test4 -------\n");
  test_4(a,b,c,N);
  check(a,res);

  printf("OK\n");
  return 0;
}

#endif

