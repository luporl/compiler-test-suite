MODULE mod1
IMPLICIT NONE

TYPE t1
 REAL,DIMENSION(5) :: r
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ASSOCIATE(aa => t1(r = (/1.0,2.0,3.0,4.0,5.0/)))
  IF(aa%r(3) .EQ. 3.0) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
