PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10) :: ch = 'xxaaxxaaxx'

ASSOCIATE(aa => ch)
  CALL sub(aa(3:8))
  IF(aa(3:8) .EQ. 'xxxxxx') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

CONTAINS

SUBROUTINE sub(dd1)
IMPLICIT NONE
CHARACTER(LEN = 6) :: dd1
dd1 = 'xxxxxx'
END SUBROUTINE

END PROGRAM
