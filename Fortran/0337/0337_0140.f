      DOUBLE PRECISION X,Y,Z,A,B1,B2,B3,B4,C1,C2,C3,C4,DIFF,DI
      K=0
      C1=0.5625D0
      C2=0.4375D0
      C3=0.875D0
      C4=9.0D0/32.0D0
      N=0
      ITEM=1
      IISW=1
      DIFF=1.0D-14
  100 N=N+1
      IF(N-1)110,120,110
  110 CONTINUE
C
   12 FORMAT(1H1 / )
  120 CONTINUE
C
      L=0
  130 DI=K
      IF(ITEM-1) 500,600,500
  600 X=DI/10.0D0
      GO TO 700
  500 X=DI
  700 Y=DSQRT(X)
      A=X
      I=0
      IF(A) 300,310,300
  310 Z=0.0D0
      GO TO 195
  300 IF(A-0.25D0) 320,140,140
  320 A=4.0D0*A
      I=I-1
      GO TO 300
  140 IF(A-1.0D0)160,160,150
  150 A=0.25D0*A
      I=I+1
      GO TO 140
  160 IF(A-0.5D0)170,180,180
  170 B1=C3*A+C4
      GO TO 190
  180 B1=C1*A+C2
  190 B2=(B1+A/B1)*0.5D0
      B3=(B2+A/B2)*0.5D0
      B4=(B3+A/B3)*0.5D0
      Z=B4*2.0D0**I
  195 CALL DPRTN(L,DIFF,X,Y,Z)
      L=L+1
      GO TO(800,900,950),ITEM
  800 IF(K-99)200,210,210
  200 K=K+1
      IF(L-50)130,100,100
  210 ITEM=2
      K=10
      GO TO 100
  900 IF(K-99) 220,230,230
  220 K=K+1
      IF(L-50)130,100,100
  230 ITEM=3
      K=100
      GO TO 130
  950 IF(K-9900) 240,250,250
  240 K=K+100
      IF(L-50)130,100,100
  250 CONTINUE
      STOP
      END
C
      SUBROUTINE    DPRTN (L,D,A,R,V)
      DOUBLE PRECISION A,R,V,DIFF,D
      DIFF = V - R
      IF(R) 90,80,90
   80 IF(DABS(DIFF)-D) 100,120,120
   90 IF(DABS(DIFF)-D*DABS(V)) 100,120,120
  100 WRITE (6,1)
    1 FORMAT(1H ,5X,4H*OK*)
C
C
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT(1H ,5X,8H*ERROR* ,4(5X,D24.17) )
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39) 200,190,200
  190 WRITE (6,3)
    3 FORMAT (1H )
  200 RETURN
      END
