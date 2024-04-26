      DOUBLE PRECISION X1,X2,Y,Z,DARRAY(2,2),DIFF,E,F,P,DI
      E(P)=1.0D0-P+P
      F(P)=(P**2+DEXP(DSIN(P-1.0D0)))/DSQRT(4.0D0*P)
      N=0
      ITEM=1
      ISW=1
      P=1.0D0
      J=1
      DARRAY(1,1)=-0.5D0
      DARRAY(1,2)=-0.01D0
      DARRAY(2,1)=0.01D0
      DARRAY(2,2)=0.5D0
      X1=10.0D0
      DIFF=1.0D-14
C
  100 K=-150
  101 N=N+1
      IF(N-1)110,120,110
  110 CONTINUE
C
   12 FORMAT(1H1 / )
  120 CONTINUE
      L=0
  130 IF(K)140,150,140
  140 DI=K
      X2=DI/10.0D0
      Y=DSIGN(X1,X2)
      IF(X2)160,160,170
  160 Z=(-1.0D0)*DABS(X1)
      GO TO 180
  170 Z=DABS(X1)
  180 CALL DR2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
  150 IF(K-150)190,200,200
  190 K=K+1
      IF(L-50)130,101,101
  200 GO TO (1,2,3,4,5,6,7,8,9,10,21),ISW
    1 X1=-10.0D0
      ISW=2
      ITEM=2
      GO TO 100
    2 X1=0.0D0
      X2=3.4D0
      ITEM=3
      ISW=3
      N=N+1
C
C
      L=0
  210 Y=DSIGN(X1,X2)
      IF(X2)220,220,230
  220 Z=(-1.0D0)*DABS(X1)
      GO TO 240
  230 Z=DABS(X1)
  240 CALL DR2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
      GO TO 200
    3 ITEM=4
C
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=DARRAY(1,1)
      X2=DARRAY(1,2)
      ISW=4
      GO TO 210
    4 X1=DARRAY(2,1)
      X2=DARRAY(2,2)
      ISW=5
      GO TO 210
    5 X1=((P**2-2.0D0)*6.0D0+1.0D0)/10.0D0
      X2=(P**2+P*0.1D0-P/10.0D0)/(-100.0D0)
      ISW=6
      GO TO 210
    6 X1=(DARRAY(1,1)*(-10.0D0)+5.0D0*P)/1000.0D0
      X2=DARRAY(1,1)**2+(P/10.0D0)*2.0D0+DARRAY(2,2)/10.0D0
      ISW=7
      GO TO 210
    7 X1=DSIN(P-1.0D0)-DSQRT(P**2/4.0D0)
      X2=(DEXP(P-1.0D0)*DSQRT(4.0D0*P)-3.0D0)/100.0D0
      ISW=8
      GO TO 210
    8 X1=(DLOG(P**2-1.0D0*DSQRT(4.0D0*P)+2.0D0)+P)/100.0D0
      X2=DSIN(DLOG(DEXP(DSIN(P-1.0D0))))*DSQRT(P)+0.5D0
      ISW=9
      GO TO 210
    9 X1=F(P)*DARRAY(1,1)
      X2=DEXP(DLOG(F(P**2)))/100.0D0-P*0.02D0
      ISW=10
      GO TO 210
   10 X1=F(DARRAY(2,1)*100.0D0)/100.0D0
      X2=E(DSIN(DSQRT(F(P)+3.0D0)-F(P)*2.0D0))*DARRAY(2,2)
      ISW=11
      GO TO 210
   21 CONTINUE
      STOP
      END
      SUBROUTINE DR2RTN(L,D,X1,X2,Y,Z)
      DOUBLE PRECISION XX,DF,X1,X2,Y,Z,D
      IF(MOD(L,10))120,110,120
  110 WRITE(6,11)
   11 FORMAT(1H )
  120 XX=DABS(Z-Y)
      IF(Y)150,160,150
  150 DF=D*DABS(Z)
      GO TO 170
  160 DF=D
  170 IF(XX-DF)130,140,140
  130 WRITE(6,12)
   12 FORMAT(1H ,4X,4H*OK*)
C
C
      RETURN
  140 WRITE(6,13)X1,X2,Y,Z,XX
   13 FORMAT(1H ,4X,7H*ERROR*,2X,D24.17,2X,3(D24.17,3X),D12.5)
      RETURN
      END
