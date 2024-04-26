MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
  CONTAINS
  PROCEDURE,PASS(d1) :: proc => proc_m
END TYPE

CONTAINS

REAL FUNCTION proc_m(d1,d2)
IMPLICIT NONE
REAL,INTENT(IN) :: d2
CLASS(t1) :: d1
proc_m = d1%r + d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: n = 5.0
CLASS(t1),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%r = 10.0

ASSOCIATE(aa => obj%proc(n) * 3.0)
  IF(aa .EQ. 45.0) THEN
    PRINT*,'pass'
  ELSE
   PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
