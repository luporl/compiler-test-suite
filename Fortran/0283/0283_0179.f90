MODULE mod1
IMPLICIT NONE

INTEGER :: a = 10,rr = 2

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: inn = 2,outt = 0
INTEGER,POINTER :: ptr
INTEGER,ALLOCATABLE :: acc
ALLOCATE(ptr,acc)
ptr = 1
acc = 3

ASSOCIATE(aa => acc + (ptr*rr)/inn + (a/rr))
  if(sizeof(aa)/=4) print*,101
  outt = fun_1(aa)
END ASSOCIATE  

IF(outt .EQ. 9) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun_1(dyy)
INTEGER :: dyy
fun_1 = dyy
END FUNCTION

END PROGRAM
