PROGRAM main
IMPLICIT NONE

INTEGER :: aa = 4
INTEGER,ALLOCATABLE :: acc
aa = 4

ASSOCIATE(bb => aa)
  ALLOCATE(acc,SOURCE = aa)
  DEALLOCATE(acc)
  PRINT*,'pass'
END ASSOCIATE

END PROGRAM
