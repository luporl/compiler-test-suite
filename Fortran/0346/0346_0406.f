          REAL   A(10),B(10),C(10),D(10)
          DATA A/10*1.0/,B/10*2.0/
          DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA D/9.,8.,7.,6.,5.,4.,3.,2.,1.,00./
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          DATA ANS/0.0/
          J = 1
          DO 10 I = 1 , 10
            IF(L(J)) THEN
               ANS = B(I) + C(I)
               D(I) = C(I) - ANS
            ENDIF
            IF(L(J)) THEN
               ANS = C(I) + 1.0
               A(I) = ANS  + C(I)
               D(I) = B(I) + C(I)
            ENDIF
 10       CONTINUE
            PRINT *,D
            END
