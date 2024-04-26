PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: xx = 3
INTEGER,POINTER,DIMENSION(:) :: ptr

ASSOCIATE(bb => xx)
ptr => fun(bb)
END ASSOCIATE

IF(ALL(ptr(1:3) .EQ. 3)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(aa)
INTEGER,POINTER,DIMENSION(:) :: fun
INTEGER,DIMENSION( : ) :: aa
INTEGER :: n = 3
ALLOCATE(fun(n))
fun = aa
END FUNCTION

END PROGRAM
