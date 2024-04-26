      DIMENSION ARRAY(2,2)
      E(P)=1.0+P-P
      F(P)=(P**2+EXP(SIN(P-1.0)))/SQRT(4.0*P)
      DIFF=1.0E-5
      J=1
      P=1.0
      N=0
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
      X1=10.0
      ISW=1
      ITEM=1
  100 K=-150
  110 N=N+1
      IF(N-1)120,130,120
  120 CONTINUE
C
   12 FORMAT(1H1 / )
  130 CONTINUE
C
      L=0
  140 X2=FLOAT(K)/10.0
      Y=DIM(X1,X2)
      Z=X1-AMIN1(X1,X2)
      CALL R2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
      IF(K-150)150,160,160
  150 K=K+1
      IF(L-50)140,110,110
  160 GO TO (1,2,3,4,5,6,7,8,9,10,21,22,23),ISW
    1 X1=-10.0
      ISW=2
      ITEM=2
      GO TO 100
    2 X1=0.0
      X2=3.4
      N=N+1
      ITEM=3
      ISW=3
C
      L=0
  170 Y=DIM(X1,X2)
      Z=X1-AMIN1(X1,X2)
      CALL R2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
      GO TO 160
    3 ITEM=4
C
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=ARRAY(1,1)
      X2=ARRAY(1,2)
      ISW=4
      GO TO 170
    4 X1=ARRAY(2,1)
      X2=ARRAY(2,2)
      ISW=5
      GO TO 170
    5 X1=((P**2-2.0)*6.0+1.0)/(10.0)
      X2=(P**2+P*0.1-P/10.0)/(-100.0)
      ISW=6
      GO TO 170
    6 X1=(ARRAY(1,1)*(-10.0)+5.0*P)/1000.0
      X2=ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0
      ISW=7
      GO TO 170
    7 X1=ABS(P-2.0)*(-0.5)
      X2=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=8
      GO TO 170
    8 X1=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      X2=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=9
      GO TO 170
    9 X1=SIN(P-1.0)-SQRT(P**2/4.0)
      X2=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=10
      GO TO 170
   10 X1=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      X2=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=11
      GO TO 170
   21 X1=F(P)*ARRAY(1,1)
      X2=EXP(ALOG(F(P**2)))/100.0-P*0.02
      ISW=12
      GO TO 170
   22 X1=F(ARRAY(2,1)*100.0)/100.0
      X2=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)
      ISW=13
      GO TO 170
   23 CONTINUE
      STOP
      END
      SUBROUTINE R2RTN(L,D,X1,X2,Y,Z)
      IF (L)    120,110,100
  100 IF (L-10) 120,110,101
  101 IF (L-20) 120,110,102
  102 IF (L-30) 120,110,103
  103 IF (L-40) 120,110,120
  110 CONTINUE
C
   10 FORMAT(1H )
  120 XX=ABS(Z-Y)
      IF(Y)150,160,150
  150 DF=D*ABS(Z)
      GO TO 170
  160 DF=D
  170 IF(XX-DF)130,140,140
  130 CONTINUE
C
   11 FORMAT(1H ,4X,4H*OK*,9X,E14.7,4X,E14.7,3(11X,E14.7))
      RETURN
  140 WRITE(6,12)X1,X2,Y,Z,XX
   12 FORMAT(1H ,4X,7H*ERROR*,6X,E14.7,4X,3(E14.7,11X),E14.7)
      RETURN
      END
