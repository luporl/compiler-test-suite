      REAL*4 A(10),B(10),C(10),D(10)
      DATA A,B,C,D/10*1.,10*1.,10*1.,10*1./
      S1=5.
      S2=2.
      S3=3.
      DO 10 I=1,10
10     A(I)=( S1/(-B(I)))*( S2/(-C(I)))*( S3/(-D(I)))
      PRINT *,A
      STOP
      END
