#include <stdio.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)
#define TYPE int
#define INIT_VALUE 3

#define IS_EQUAL(a,b) (a==b)

TYPE a[N],b[N],c[N],d[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    a[i] = i*2%11+i;
  }
}

TYPE sum_ans(void) {
  int i;
  TYPE sum=1.0;  
  for(i=0; i<ROLL_TIMES;++i) {
    sum *= a[i];
  }
  return sum;
}

TYPE sum(void) {
  int i;
  TYPE sum=1.0;
  for(i=0; i<ROLL_TIMES;++i) {
    sum *= a[i];
  }
  return sum;
}

int main()
{
  TYPE ans, res; 
  
  init();
  ans = sum_ans();
  res = sum();
  if(IS_EQUAL(ans, res)) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
