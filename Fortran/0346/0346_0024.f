       DIMENSION A(7000),B(7000),C(7000)
       ITNO = 0
       DO  1  I = 1 , 7000
       B(I) = I
       C(I) = I
 1     CONTINUE
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  20 I = 3 , 384 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 20    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 21
       WRITE(6,1100) ITNO
       GO TO 22
 21    CONTINUE
       WRITE(6,1000) ITNO
 22    CONTINUE
       WRITE(6,2000) M , X , S
       STOP
 1000  FORMAT(1X,'    TEST NO. = ',I3,'              ******( OK )*****')
 1100  FORMAT(1X,'    TEST NO. = ',I3,'              ******( NG )*****')
 2000  FORMAT(1X,'M = ',I10,5X,'X = ' ,E20.10,5X,'S = ',E20.10)
       END
