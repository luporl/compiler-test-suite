      REAL DP(2),ANS(2)
      COMPLEX CX,CXV,CXR
      EQUIVALENCE (CX,DP(1)),(CXV,ANS(1))
C
      ITEM=0
      N=0
      DP(1)=5.0
      ISG=1
      DIFF=1.0E-5
  100 K=-50
      ITEM=ITEM+1
  110 N=N+1
      IF(N-1)120,130,120
  120 WRITE(6,12)
   12 FORMAT(1H1/)
  130 CONTINUE
C
      L=0
  140 IF(ISG-3)150,160,160
  150 DP(2)=FLOAT(K)
      GO TO 200
  160 DP(1)=FLOAT(K)
  200 X=DP(1)
      Y=DP(2)
      ANS(1)=SQRT((SQRT(X**2+Y**2)+X)/2.0)
      ANS(2)=SIGN(SQRT((SQRT(X**2+Y**2)-X)/2.0),Y)
      CXR=CSQRT(CX)
      CALL CPRTN(L,DIFF,CX,CXR,CXV)
      L=L+1
      IF(K-50)170,180,180
  170 K=K+1
      IF(L-50)140,110,110
  180 GO TO (1,2,3,4),ISG
    1 DP(1)=-10.0
      ISG=2
      GO TO 100
    2 DP(2)=5.0
      ISG=3
      GO TO 100
    3 DP(2)=-10.0
      ISG=4
      GO TO 100
    4 CONTINUE
      STOP
      END
C
      SUBROUTINE    CPRTN (L,D,A,R,V)
      COMPLEX A,R,V,DIFF
      DIFF = V - R
      IF(CABS(R)) 90,80,90
   80 IF(CABS(DIFF)-D) 100,120,120
   90 IF(CABS(DIFF)-D*CABS(V)) 100,120,120
  100 WRITE (6,1)
    1 FORMAT (1H ,2X,4H*OK*)
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT (1H ,2X,7H*ERROR*,4X,E14.7,1X,E14.7,4X,E14.7,1X,E14.7,
     *        4X,E14.7,1X,E14.7,3X,2E10.3)
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39) 200,190,200
  190 WRITE (6,3)
    3 FORMAT (1H )
  200 RETURN
      END
