PROGRAM main
IMPLICIT NONE

INTEGER :: aa = 4
INTEGER,ALLOCATABLE :: acc

ASSOCIATE(bb => aa) 
  ALLOCATE(acc,SOURCE=bb)
END ASSOCIATE

IF(acc .EQ. 4) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
