      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/,M/1/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
         M = M + 1
         A(M) = B(M) + C(M)
         M = M - 1
         A(M) = A(M) / C(M) * B(M)
   10 CONTINUE
      B(I-1) = B(I-1) + A(I-1) + C(I-1)
      C(M) = B(M) + A(M) + C(M)
      WRITE(6,100) (A(I),B(I),C(I),I=1,N)
  100 FORMAT(3F5.1)
      STOP
      END
