MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: rr1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:),ALLOCATABLE :: acc
ALLOCATE(acc(1:5))
acc(1)%rr1 = 10.0
acc(2)%rr1 = 12.0
acc(3)%rr1 = 14.0
acc(4)%rr1 = 16.0
acc(5)%rr1 = 18.0
CALL sub()

CONTAINS

SUBROUTINE sub()
IMPLICIT NONE
ASSOCIATE(aa => acc)
IF(aa(4)%rr1 .EQ. 16.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF  
END ASSOCIATE
END SUBROUTINE

END PROGRAM
