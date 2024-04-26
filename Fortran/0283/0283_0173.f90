MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(*),POINTER :: ptr
CLASS(t2),ALLOCATABLE,TARGET :: allc
ALLOCATE(allc)
allc%r2 = 10.0
ptr => allc

ASSOCIATE(aa => ptr)
SELECT TYPE(aa)
  TYPE IS(t2)
    PRINT*,'pass'
END SELECT
END ASSOCIATE

END PROGRAM
