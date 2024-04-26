MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 4) :: r2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num = 30
CLASS(t2),ALLOCATABLE :: allc
ALLOCATE(allc)
allc%r2 = 20

ASSOCIATE(aa => fun(allc))
   DO WHILE (num .GT. aa%r2)
      num = num - 2
   END DO
END ASSOCIATE

IF(num .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),ALLOCATABLE :: dd1,fun
ALLOCATE(fun)
fun%r2 = dd1%r2
END FUNCTION

END PROGRAM
