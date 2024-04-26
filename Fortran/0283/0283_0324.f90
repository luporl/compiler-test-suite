MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

INTERFACE OPERATOR ( * )
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(dd1,dd2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: dd1
CLASS(t2),DIMENSION(:),ALLOCATABLE :: multip 
REAL,INTENT(IN) :: dd2
ALLOCATE(multip(1:10))
multip%r2 = dd1%r2 * dd2
END FUNCTION

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:),ALLOCATABLE :: allc
ALLOCATE(allc(1:10))
allc%r2 = 2.0

ASSOCIATE(aa => fun(allc) * 3.0)
  IF(aa(5)%r2 .EQ. 6.0) THEN
     PRINT*,'pass'
  ELSE
     PRINT*,101
  END IF
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,fun
ALLOCATE(fun(1:10))
fun%r2 = dd1%r2
END FUNCTION

END PROGRAM
