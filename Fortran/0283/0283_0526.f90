MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

REAL,DIMENSION(5) :: arr = 0
TYPE(t1),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%rr = 2.0

ASSOCIATE(aa => arr , bb => obj%rr)
  aa = bb
END ASSOCIATE

IF(ALL(arr(1:5) .EQ. 2.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
