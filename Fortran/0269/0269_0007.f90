IMPLICIT NONE
INTEGER::INTEGER(2),ARR(2)
INTEGER=[50,100]
ARR=  [(INTEGER(JJJ),INTEGER(4)::JJJ=1,2)]
IF(ANY(ARR /= INTEGER))PRINT*,101

PRINT*,"PASS"
END

