      REAL*4  A(50),B(50),C(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/49/
      S=1.
      T=1.
      DO 10 I=3,NN
        T1=A(I)+B(I)
        S = S+S*C(I)
        T = T+T1*A(I)
        T = T*B(I)
        A(I)=T-T1
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,*) 'T= ',T
      WRITE(6,600) A
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
