PROGRAM main
IMPLICIT NONE

INTEGER :: num = 0

ASSOCIATE(aa => 10)
  num = fun_1(10)
END ASSOCIATE

IF(num .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun_1(dy)
INTEGER :: dy
fun_1 = dy
END FUNCTION

END PROGRAM
