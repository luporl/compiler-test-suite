#include <stdio.h>

int main()
{
  printf("__STDC_VERSION__ test program\n");
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201112L
  printf("__STDC_VERSION__ is correct.\n");
#else
  printf("check compile option.\n");
#endif

  return 0;
}
