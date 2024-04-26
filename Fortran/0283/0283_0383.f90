MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL(KIND = 4) :: r2
END TYPE

END MODULE

PROGRAM main
USE mod1     
IMPLICIT NONE

CLASS(*),ALLOCATABLE :: allc
TYPE(t2),DIMENSION(5) :: res

ALLOCATE(t2 :: allc)
res = fun_main(allc)

IF(res(3)%r2 .EQ. 6.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_main(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: fun_main
CLASS(*),ALLOCATABLE :: dd1
ALLOCATE(fun_main(5))
SELECT TYPE(dd1)
  TYPE IS(t2)
  dd1%r2 = 2.0
  ASSOCIATE(aa => dd1%r2 * (/1,2,3,4,5/))
    fun_main%r2 = aa
  END ASSOCIATE
END SELECT
END FUNCTION

END PROGRAM
