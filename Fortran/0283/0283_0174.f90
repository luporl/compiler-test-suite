PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(:),POINTER :: num 
INTEGER,DIMENSION(3:12),TARGET :: tgt = (/-1,2,4,-3,5,1,0,7,-8,-2/)
num => fun()

IF(num(7) .EQ. 5) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
IMPLICIT NONE
INTEGER,DIMENSION(:),POINTER :: fun
ASSOCIATE(aa => tgt)
  fun => aa
END ASSOCIATE
END FUNCTION

END PROGRAM
