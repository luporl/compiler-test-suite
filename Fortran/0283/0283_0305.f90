MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER,DIMENSION(1:5,1:5,1:5,1:5) :: arr2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(1:5,20:24,-10:-6,3:7) :: arr1  = 2
TYPE(t1) :: obj
obj%arr2 = 3

ASSOCIATE(aa => arr1(1:5:2,20:24:2,-10:-6:2,3:7:2) + obj%arr2(1:5:2,1:5:2,1:5:2,1:5:2))
  IF(aa(2,2,2,2) .EQ. 5) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
