COMPLEX(KIND=2),PARAMETER ::A1=CMPLX(-12.21_2,232.3_2)
COMPLEX(KIND=2),PARAMETER ::A2= CMPLX (AIMAG(A1),REAL(A1), KIND=2)
COMPLEX(KIND=2),PARAMETER::A3=CMPLX(ABS(-21.2_2),REAL(10.2_2),KIND=KIND(0.0));

IF(A1/=(-12.21_2,232.3_2)) PRINT*,"101"

IF(A2/=(232.3_2,-12.21_2)) PRINT*,"102"

IF(A3/=(21.2_2,10.2_2)) PRINT*,"103"
PRINT*,"PASS"
END

