REAL(KIND=2)::R5=B'100111111 01000000'
REAL(KIND=2)::R6=O'1437500'
REAL(KIND=2)::R7=X'13F40'
REAL(KIND=2)::R8=B'00110 00000110'
REAL(KIND=2)::R9=O'03006'
REAL(KIND=2)::R10=X'606'

IF(R5 /= R6 .AND. R6 /=R7)PRINT*,"101"
IF(R8 /= R9 .AND. R9 /=R10)PRINT*,"102"

PRINT*,"PASS"

END
