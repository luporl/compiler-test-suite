      REAL*8 A1(10),A2(10),C(10)
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA A2/11,12,13,14,15,16,17,18,19,20/
      DO i=1,10
         A1(i)=SIN(a2(i))
         A2(i)= COS(c(i))
      ENDDO
      WRITE(6,*) A1,A2
      END
