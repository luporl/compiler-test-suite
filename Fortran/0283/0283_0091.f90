PROGRAM main
IMPLICIT NONE

INTEGER :: num = 20

ASSOCIATE(bb => num)
  IF(bb-20) 10,20,10
  10 PRINT*,101
  20 PRINT*,'pass' 
END ASSOCIATE

END PROGRAM
