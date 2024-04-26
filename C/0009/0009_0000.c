#include <stdio.h>
#include <memory.h>

signed       int x[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;
signed long long y[16] ;

signed long long z[16] = { -8+1, -7+1, -6+1, -5+1, -4+1, -3+1, -2+1, -1+1,
			   0+1, 1+1, 2+1, 3+1, 4+1, 5+1, 6+1, 7+1} ;

int nn = 16;

void foo()
{
   int i, n = nn;
   for(i=0;i<n;i++) {
     y[i] = x[i] + 1;
   }
}
int main()
{
  int i;
  
  foo();

  if (memcmp(&y, &z, sizeof(long long)*16) == 0) {
    puts("OK");
  }
  else {
    for(i=0;i<16;i++) {
      if (y[i] != z[i]) {
	printf("NG %d calc=%llx ans=%llx\n", i, y[i], z[i]);
      }
    }
  }
}
    


