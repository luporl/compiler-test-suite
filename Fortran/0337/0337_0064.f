      DIMENSION X(10,10,10),Y(10,10,10)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
      II  =1
      JJ  =3
      KK  =5
      ITM =1
      N   =1
      DO 20 K=1,10
      DO 20 J=1,10
      DO 20 I=1,10
      X(I,J,K)=FLOAT(N)/100.0
      N   =N+1
   20 CONTINUE
      DO 40 K=1,10
      DO 40 J=1,10
      DO 40 I=1,10
      Y(I,J,K)=100.0*X(I,J,K)
   40 CONTINUE
C
    1 ANS =1.0
      A   =Y(1,1,1)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-05)700,701,701
C
    2 ANS =4210.0
      A   =Y(II,JJ,KK)*10.0
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-02)700,701,701
C
    3 ANS =632.0
      A   =Y(II+1,JJ+1,KK+2)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    4 ANS =232.0
      A   =Y(JJ-1,KK-1,KK-2)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    5 ANS =889.0
      A  =Y(3*JJ,3*JJ,3*JJ)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    6 ANS =900.0
      A   =Y(2*JJ+4,2*JJ+4,2*JJ+3)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    7 ANS =289.0
      A   =Y(3*KK-6,4*JJ-3,5*II-2)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    8 ANS =155.0
      A   =Y(KK,KK+1,JJ-1)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
    9 ANS =509.0
      A   =Y(KK+4,JJ-2,2*JJ)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   10 ANS =281.0
      A   =Y(KK-4,3*JJ,2*II+1)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   11 ANS =678.0
      A   =Y(8*II,2*JJ+2,3*KK-8)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   12 ANS =633.0
      A   =Y(JJ,KK-1,3*JJ-2)
      DIF =A-ANS
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   13 ANS =886.0
      A   =Y(KK+1,3*JJ,2*KK-1)
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   14 ANS =343.0
      A   =Y(3,KK,JJ+1)
      IF(ABS(DIF)-1.0E-03)700,701,701
C
   15 ANS =795.0
      A   =Y(JJ+2,3*JJ+1,8)
      IF(ABS(DIF)-1.0E-03)700,701,701
  700 WRITE(6,103)ITM
      GO TO 1000
  701 WRITE(6,102)ITM,A,ANS,DIF
 1000 ITM =ITM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16),ITM
   16 CONTINUE
      STOP
      END
