      PROGRAM MAIN
      REAL * 4 A(10),B(10),C(10)
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA A/10*0/
      DATA M/8/
C
      N=1
      DO 1 I=1,M
        A(I)=B(N)+C(N+1)
        N=N+1
1     CONTINUE
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
