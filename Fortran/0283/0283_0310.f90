MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

INTERFACE OPERATOR(*)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(d1,d2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:,:,:,:,:),INTENT(IN) :: d1
REAL,INTENT(IN) :: d2
CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: multip
ALLOCATE(multip(3,4,5,6,2))
multip%r2 = d1%r2 * d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: acc

ALLOCATE(acc(3,4,5,6,2))
acc%r2 = 2.0

ASSOCIATE(aa => fun_1(acc) * 3.0)
  IF(aa(1,1,1,1,1)%r2 .EQ. 6.0)THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

CONTAINS

FUNCTION fun_1(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: fun_1
CLASS(t2),DIMENSION(:,:,:,:,:) :: dd1
ALLOCATE(fun_1(3,4,5,6,2))
fun_1%r2 = dd1%r2
END FUNCTION

END PROGRAM
