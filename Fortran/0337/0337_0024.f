      DIMENSION N(5),M(2,3),A(5),B(2,3)
      EQUIVALENCE (I,J),(N(2),M(1,3)),(K,N(1)),(L,M(2,3))
      EQUIVALENCE (D,E),(A(2),B(1,3)),(F,A(1)),(G,B(2,3))
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X)
C
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X)
C
  104 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  105 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
C
      I   =9999
      ITM =01
      IF(J-I)1,2,1
    1 WRITE(6,104)ITM,J,I
      GO TO 500
    2 WRITE(6,105)ITM
C
  500 N(2)=-1234
      ITM =ITM+1
      IF(M(1,3)-N(2))3,4,3
    3 WRITE(6,104)ITM,M(1,3),N(2)
      GO TO 501
    4 WRITE(6,105)ITM
C
  501 ITM =ITM+1
      N(1)=32767
      IF(K-N(1))5,6,5
    5 WRITE(6,104)ITM,K,N(1)
      GO TO 502
    6 WRITE(6,105)ITM
C
  502 ITM =ITM+1
      M(2,3)=-32767
      IF(L-M(2,3))7,8,7
    7 WRITE(6,104)ITM,L,M(2,3)
      GO TO 503
    8 WRITE(6,105)ITM
C
  503 ITM =ITM+1
      E   =3.456
      IF(D-E)9,10,9
    9 WRITE(6,102)ITM,D,E
      GO TO 504
   10 WRITE(6,103)ITM
C
  504 ITM =ITM+1
      B(1,3)=-23456
      IF(A(2)-B(1,3))11,12,11
   11 WRITE(6,102)ITM,A(2),B(1,3)
      GO TO 505
   12 WRITE(6,103)ITM
C
  505 ITM =ITM+1
      F   =14
      IF(A(1)-F)13,14,13
   13 WRITE(6,102)ITM,A(1),F
      GO TO 506
   14 WRITE(6,103)ITM
C
  506 ITM =ITM+1
      G   =-32
      IF(B(2,3)-G)15,16,15
   15 WRITE(6,102)ITM,G,B(2,3)
      GO TO 507
   16 WRITE(6,103)ITM
C
  507 ITM =ITM+1
      N(1)=32767
      IF(M(2,2)-N(1))17,18,17
   17 WRITE(6,104)ITM,M(2,2),N(1)
      GO TO 508
   18 WRITE(6,105)ITM
C
  508 ITM =ITM+1
      L   =-32767
      IF(N(3)-L)19,20,19
   19 WRITE(6,104)ITM,N(3),L
      GO TO 509
   20 WRITE(6,105)ITM
C
  509 ITM =ITM+1
      A(1)=-0.3897E 30
      IF(B(2,2)-A(1))21,22,21
   21 WRITE(6,102)ITM,B(2,2),A(1)
      GO TO 510
   22 WRITE(6,103)ITM
C
  510 ITM =ITM+1
      G   =0.4641E-6
      IF(A(3)-G)23,24,23
   23 WRITE(6,102)ITM,A(3),G
      GO TO 511
   24 WRITE(6,103)ITM
  511 CONTINUE
      STOP 4641
      END
