REAL*2::R,RES,RR(4)
R=10.5
RR=10.5
RES=EPSILON(R)
IF(RES /= 9.7656E-04_2)PRINT*,101
RES=EPSILON(RR)
IF(RES /= 9.7656E-04_2)PRINT*,102
IF(EPSILON(MIN(4.5_2,5.5_2)) /= 9.7656E-04_2)PRINT*,103
IF(EPSILON(EPSILON(REAL(CMPLX(5.5),KIND=2))) /= 9.7656E-04_2)PRINT*,104
IF(EPSILON((1.5_2+MIN(1,5_2,4)) / 2.4_2) /= 9.7656E-04_2)PRINT*,105
PRINT*,"PASS"
END
