          INTEGER IR4(10)
          REAL*8 R41(10)
          REAL*8 R42(10)
          LOGICAL L(10)
          LOGICAL LL/.TRUE./
          DATA R41/-1.D0,-2.D0,-3.D0,-4.D0,-5.D0,-6.D0,
     E            -7.D0,-8.D0,-9.D0,-10.D0/
          DATA IR4/-1,-3 ,-5 ,-7 ,-9 ,-2 ,-4 ,-6 ,-8 ,-12 /
          DATA R42/-10.D0,-9.D0,-8.D0,-7.D0,-6.D0,-5.D0,
     E             -4.D0,-3.D0,-2.D0,-1.D0/
          DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DO 10 I = 1 , 10
          IF( L(I) ) R41(I) = DFLOAT(IR4(I))
          IF( LL ) THEN
              IF( L(I) ) R41(I) = DFLOAT(IR4(I))
          ENDIF
          IF( L(I) ) R42(I) = DFLOAT(IR4(I))
          IF( LL ) THEN
              IF( L(I) ) R42(I) = DFLOAT(IR4(I))
          ENDIF
 10       CONTINUE
          PRINT *,R41,R42
          END
