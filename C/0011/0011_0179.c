#include  <stdio.h>

unsigned            char   uc1,uc2,uc3,uc4;
unsigned      short int    us1,us2;
unsigned            int    ui1,ui2,ui3;
unsigned long long  int    ul1,ul2,ul3,ul4,ul5;
                    float  fl1,fl2[2];
                    double db1,db2,db3;
#ifdef NO_LONG_DOUBLE
              double ld1,ld2,ld3,ld4,ld5,ld6,ld7;
#else
              long  double ld1,ld2,ld3,ld4,ld5,ld6,ld7;
#endif
int main()
{
 static signed char            sc1,sc2,sc3[3],sc4,sc5[4],sc6,sc7;
 static signed short int       ss1[4],ss2[2];
 static signed int             si1,si2[2];
 static signed long long int   sl1,sl2[3],sl3;
 static unsigned char          uchr1[10],uchr2;
 static unsigned short int     usin1,usin2[2];
 static unsigned int           uint1,uint2,uint3;
 static unsigned long long int ulin1,ulin2;
 static signed char           *p1=sc3;
 static unsigned int          *p2=&uint2;

 printf("* TP=SCPIN08 ENTERED *\n");
 if(uc1==0)                         printf(" ** SCPIN08.01 OK **\n");
                               else printf(" ** SCPIN08.01 NG **\n");
 if(uc2+1==1)                       printf(" ** SCPIN08.02 OK **\n");
                               else printf(" ** SCPIN08.02 NG **\n");
 if(uc3*100==0)                     printf(" ** SCPIN08.03 OK **\n");
                               else printf(" ** SCPIN08.03 NG **\n");
 if(uc4/10==0)                      printf(" ** SCPIN08.04 OK **\n");
                               else printf(" ** SCPIN08.04 NG **\n");
 if(us1-10==-10)                    printf(" ** SCPIN08.05 OK **\n");
                               else printf(" ** SCPIN08.05 NG **\n");
 if(us2 | 123==123)                 printf(" ** SCPIN08.06 OK **\n");
                               else printf(" ** SCPIN08.06 NG **\n");
 if(ui1*30==ui2*40)                 printf(" ** SCPIN08.07 OK **\n");
                               else printf(" ** SCPIN08.07 NG **\n");
 if(++ui3==1)                       printf(" ** SCPIN08.08 OK **\n");
                               else printf(" ** SCPIN08.08 NG **\n");
 if(ul1==0)                         printf(" ** SCPIN08.09 OK **\n");
                               else printf(" ** SCPIN08.09 NG **\n");
 if(++ul2==1)                       printf(" ** SCPIN08.10 OK **\n");
                               else printf(" ** SCPIN08.10 NG **\n");
 if(ul3+ul4==ul5)                   printf(" ** SCPIN08.11 OK **\n");
                               else printf(" ** SCPIN08.11 NG **\n");
 if(fl1==0)                         printf(" ** SCPIN08.12 OK **\n");
                               else printf(" ** SCPIN08.12 NG **\n");
 if(fl2[1]-fl2[0]==0)           printf(" ** SCPIN08.13 OK **\n");
                               else printf(" ** SCPIN08.13 NG **\n");
 if(db1*db2==db3)                   printf(" ** SCPIN08.14 OK **\n");
                               else printf(" ** SCPIN08.14 NG **\n");
 if(ld1==0)                         printf(" ** SCPIN08.15 OK **\n");
                               else printf(" ** SCPIN08.15 NG **\n");
 if(ld2+ld3==ld4-ld5*2)             printf(" ** SCPIN08.16 OK **\n");
                               else printf(" ** SCPIN08.16 NG **\n");
 if(ld6+123==123)                   printf(" ** SCPIN08.17 OK **\n");
                               else printf(" ** SCPIN08.17 NG **\n");
 if(ld7==0)                         printf(" ** SCPIN08.18 OK **\n");
                               else printf(" ** SCPIN08.18 NG **\n");

 if(sc1==0 && sc2==0)               printf(" ** SCPIN08.19 OK **\n");
                               else printf(" ** SCPIN08.19 NG **\n");
 if(sc3[0]+sc3[1]+sc3[2]==0)  printf(" ** SCPIN08.20 OK **\n");
                               else printf(" ** SCPIN08.20 NG **\n");
 if(123>>sc4==123 && sc4==0)        printf(" ** SCPIN08.21 OK **\n");
                               else printf(" ** SCPIN08.21 NG **\n");
 if(sc5[0]*2+2==sc5[2]+1+1)     printf(" ** SCPIN08.22 OK **\n");
                               else printf(" ** SCPIN08.22 NG **\n");
 if(sc5[1]-144==sc5[3]-200+56)  printf(" ** SCPIN08.23 OK **\n");
                               else printf(" ** SCPIN08.23 NG **\n");
 if(sc6==sc7 && sc7==0)             printf(" ** SCPIN08.24 OK **\n");
                               else printf(" ** SCPIN08.24 NG **\n");
 if((ss1[1]^32767)==(ss1[0]+32767))printf(" ** SCPIN08.25 OK **\n");
                               else printf(" ** SCPIN08.25 NG **\n");
 if(ss1[2]+ss1[3]-ss2[1]==0)  printf(" ** SCPIN08.26 OK **\n");
                               else printf(" ** SCPIN08.26 NG **\n");
 if(ss2[0]^32767-1==32766)       printf(" ** SCPIN08.27 OK **\n");
                               else printf(" ** SCPIN08.27 NG **\n");
 if(sc3[0]+sc3[1]+sc3[2]==0)  printf(" ** SCPIN08.28 OK **\n");
                               else printf(" ** SCPIN08.28 NG **\n");
 if(++si1==1 && si1-1==0)           printf(" ** SCPIN08.29 OK **\n");
                               else printf(" ** SCPIN08.29 NG **\n");
 if(si2[0]+si2[1]+1==1)         printf(" ** SCPIN08.30 OK **\n");
                               else printf(" ** SCPIN08.30 NG **\n");
 if(--sl1+(--sl3)==-2)              printf(" ** SCPIN08.31 OK **\n");
                               else printf(" ** SCPIN08.31 NG **\n");
 if(--sl2[1]+(++sl2[0])==0)     printf(" ** SCPIN08.32 OK **\n");
                               else printf(" ** SCPIN08.32 NG **\n");
 if(uchr1[7]+uchr2==0)            printf(" ** SCPIN08.33 OK **\n");
                               else printf(" ** SCPIN08.33 NG **\n");
 if(usin1==uint3 && uint1==ulin2)   printf(" ** SCPIN08.34 OK **\n");
                               else printf(" ** SCPIN08.34 NG **\n");
 if(ulin1==0)                       printf(" ** SCPIN08.35 OK **\n");
                               else printf(" ** SCPIN08.35 NG **\n");
 if(p1==sc3)                        printf(" ** SCPIN08.36 OK **\n");
                               else printf(" ** SCPIN08.36 NG **\n");
 if(p2==&uint2)                     printf(" ** SCPIN08.37 OK **\n");
                               else printf(" ** SCPIN08.37 NG **\n");
 printf("  * SCPIN08 ENDED **\n");
}
