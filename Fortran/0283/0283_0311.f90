PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr1 = (/1,2,3,4,5/)

ASSOCIATE(aa => (/12,3,24,5,6/) + 10 + arr1(3))
  IF(aa(3) .EQ. 37) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
