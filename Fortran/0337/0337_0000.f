      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
C
      I1=12345
      I2=11111
      J1=I1+I2
      JANS=23456
      ITM=01
      IF(JANS-J1)2,3,2
  102 FORMAT(1H0,12X,7H*ERROR*,9X,2H( ,I2,2H ),12X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,12X,2H( ,I2,2H ),12X,I6,20X,I6)
    2 WRITE(6,102)ITM,J1,JANS
      GO TO 500
    3 WRITE(6,103)ITM,J1,JANS
C
  500 J2=I1-I2
      JANS=1234
      ITM=ITM+1
      IF(JANS-J2)4,5,4
    4 WRITE(6,102)ITM,J2,JANS
      GO TO 501
    5 WRITE(6,103)ITM,J2,JANS
C
  501 I3=222
      I4=15
      J3=I3*I4
      JANS=3330
      ITM=ITM+1
      IF(JANS-J3)6,7,6
    6 WRITE(6,102)ITM,J3,JANS
      GO TO 502
    7 WRITE(6,103)ITM,J3,JANS
C
  502 I4=12484
      I5=3121
      J4=I4/I5
      JANS=4
      ITM=ITM+1
      IF(JANS-J4)8,9,8
    8 WRITE(6,102)ITM,J4,JANS
      GO TO 503
    9 WRITE(6,103)ITM,J4,JANS
C
  503 J5=I1+7
      JANS=12352
      ITM=ITM+1
      IF(JANS-J5)10,11,10
   10 WRITE(6,102)ITM,J5,JANS
      GO TO 504
   11 WRITE(6,103)ITM,J5,JANS
C
  504 J6  =11-I2
      JANS=-11100
      ITM =ITM+1
      IF(JANS-J6)12,13,12
   12 WRITE(6,102)ITM,J6,JANS
      GO TO 505
   13 WRITE(6,103)ITM,J6,JANS
C
  505 J7  =2*I2
      JANS=22222
      ITM =ITM+1
      IF(JANS-J7)14,15,14
   14 WRITE(6,102)ITM,J7,JANS
      GO TO 506
   15 WRITE(6,103)ITM,J7,JANS
C
  506 J8  =I1/5
      JANS=2469
      ITM=ITM+1
      IF(JANS-J8)16,17,16
   16 WRITE(6,102)ITM,J8,JANS
      GO TO 507
   17 WRITE(6,103)ITM,J8,JANS
C
  507 I6  =-500
      I7  =-400
      J9  =I6+I7
      JANS=-900
      ITM=ITM+1
      IF(JANS-J9)18,19,18
   18 WRITE(6,102)ITM,J9,JANS
      GO TO 508
   19 WRITE(6,103)ITM,J9,JANS
C
  508 J10 =I6-I7
      JANS=-100
      ITM =ITM+1
      IF(JANS-J10)20,21,20
   20 WRITE(6,102)ITM,J10,JANS
      GO TO 509
   21 WRITE(6,103)ITM,J10,JANS
C
  509 I8  =3
      J11 =I7*I8
      JANS=-1200
      ITM =ITM+1
      IF(JANS-J11)22,23,22
   22 WRITE(6,102)ITM,J11,JANS
      GO TO 510
   23 WRITE(6,103)ITM,J11,JANS
C
  510 I9  =5
      J12 =I7/I9
      JANS=-80
      ITM =ITM+1
      IF(JANS-J12)24,25,24
   24 WRITE(6,102)ITM,J12,JANS
      GO TO 511
   25 WRITE(6,103)ITM,J12,JANS
C
  511 J13=I7+5
      JANS=-395
      ITM=ITM+1
      IF(JANS-J13)26,27,26
   26 WRITE(6,102)ITM,J13,JANS
      GO TO 512
   27 WRITE(6,103)ITM,J13,JANS
C
  512 J14=20-I7
      JANS=420
      ITM=ITM+1
      IF(JANS-J14)28,29,28
   28 WRITE(6,102)ITM,J14,JANS
      GO TO 513
   29 WRITE(6,103)ITM,J14,JANS
C
  513 I7  =7
      J15 =-8*I7
      JANS=-56
      ITM =ITM+1
      IF(JANS-J15)30,31,30
   30 WRITE(6,102)ITM,J15,JANS
      GO TO 514
   31 WRITE(6,103)ITM,J15,JANS
C
  514 I7=20
      J16=I7/(-5)
      JANS=-4
      ITM=ITM+1
      IF(JANS-J16)32,33,32
   32 WRITE(6,102)ITM,J16,JANS
      GO TO 515
   33 WRITE(6,103)ITM,J16,JANS
C
  515 I7=30
      J17=0-I7
      JANS=-30
      ITM=ITM+1
      IF(JANS-J17)34,35,34
   34 WRITE(6,102)ITM,J17,JANS
      GO TO 516
   35 WRITE(6,103)ITM,J17,JANS
C
  516 I7=0
      J18=22*I7
      JANS=0
      ITM=ITM+1
      IF(JANS-J18)36,37,36
   36 WRITE(6,102)ITM,J18,JANS
      GO TO 517
   37 WRITE(6,103)ITM,J18,JANS
C
  517 J19=I7/300
      JANS=0
      ITM=ITM+1
      IF(JANS-J19)38,39,38
   38 WRITE(6,102)ITM,J19,JANS
      GO TO 518
   39 WRITE(6,103)ITM,J19,JANS
  518 CONTINUE
      STOP
      END
