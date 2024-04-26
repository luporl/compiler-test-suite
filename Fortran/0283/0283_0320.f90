MODULE mod1
IMPLICIT NONE

TYPE t1
  PROCEDURE(sub),POINTER,NOPASS :: proc_m => NULL()
END TYPE

CONTAINS

REAL FUNCTION sub(d1,d2)
IMPLICIT NONE
REAL :: d1,d2
sub = d1 + d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE
REAL FUNCTION proc(d1,d2)
IMPLICIT NONE
REAL :: d1,d2
END FUNCTION
END INTERFACE

TYPE(t1) :: tt
tt%proc_m => proc

ASSOCIATE(aa => tt%proc_m(2.0,1.0) * 3.0)
  IF(aa .EQ. 3.0) THEN
    PRINT*,'pass'
  ELSE
   PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM

REAL FUNCTION proc(d1,d2)
IMPLICIT NONE
REAL :: d1,d2
proc = d1 - d2
END FUNCTION
