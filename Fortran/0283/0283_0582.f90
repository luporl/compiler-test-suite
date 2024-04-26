MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 1) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 1) :: r2
END TYPE

INTERFACE OPERATOR ( * )
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(dd1,dd2)
IMPLICIT NONE
CLASS(t2),INTENT(IN) :: dd1 
CLASS(t2),ALLOCATABLE :: multip 
CLASS(t1),INTENT(IN) :: dd2
ALLOCATE(multip)
multip%r2 = dd1%r2 * dd2%r1
END FUNCTION

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(KIND = 1) :: num = 20,res
CLASS(*),ALLOCATABLE :: allc
CLASS(t1),POINTER :: ptr,ptr2

ALLOCATE(ptr,ptr2)
ptr%r1 = 3
ptr2%r1 = 4

ALLOCATE(t2 :: allc)

SELECT TYPE(allc)
CLASS IS(t2)
  allc%r2 = 2
  ASSOCIATE(aa => fun(allc) * ptr)
    DO WHILE(num .GT. aa%r2)
      num = num - 2
    END DO
    IF(num .EQ. 6) THEN
      ASSOCIATE(bb => aa * ptr2)
        SELECT CASE(bb%r2)
        CASE(24)
          res = 1
        END SELECT
      END ASSOCIATE
    ELSE
      res = 0
    END IF
  END ASSOCIATE
END SELECT

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),ALLOCATABLE :: fun
CLASS(t2) :: dd1
ALLOCATE(fun)
fun%r2 = dd1%r2
END FUNCTION

END PROGRAM
