#include <string.h>
#include  <stdio.h>
void sub2(char *x4);
void sub1(char *x3);

char x1[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
char x2[]={"ABC"};
int main() {
  static char x3[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
  static char x4[]={"ABC"};
  printf("*** TEST START ***\n");
  sub1(x3);
  sub2(x4);
  printf("***  TEST END  ***\n");
}
void sub1(char *x3)
{
  if (memcmp(x1,x3,sizeof(x1))==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
}
void sub2(char *x4)
{
  if (memcmp(x2,x4,sizeof(x2))==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
}
