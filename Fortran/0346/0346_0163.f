          REAL*4 A(10),B(10),C(10),X(10)
          DATA A/0.11,0.12,0.13,0.12,0.15,0.16,0.12,0.12,0.19,0.20/
          DATA B/0.21,0.22,0.23,0.22,0.25,0.26,0.22,0.22,0.29,0.30/
          DATA C/0.31,0.32,0.33,0.32,0.35,0.36,0.32,0.32,0.39,0.40/
          X(9)  = 0
          X(10) = 1.0
          DO 10 I = 1 , 10
            IF ( I .LT. 9 )  THEN
                 X(I) = SIN( A(I)+B(I)+C(I) )
            ENDIF
 10       CONTINUE
          WRITE(6,100) X
  100     FORMAT(' ',F10.6)
          STOP
          END
