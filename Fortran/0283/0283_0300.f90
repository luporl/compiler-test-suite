PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(2:6,3:7,4:8),TARGET :: dd1 = 3
INTEGER,DIMENSION(2:6,3:7,4:8),TARGET :: dd2 = 4

ASSOCIATE(aa => fun_1(dd1) + fun_2(dd2))
  IF(aa(1,1,1) .EQ. 7) PRINT*,'pass'
END ASSOCIATE

CONTAINS

FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(:,:,:),POINTER :: fun_1
INTEGER,DIMENSION(1:5,2:6,3:7),TARGET :: dd1
fun_1 => dd1
END FUNCTION

FUNCTION fun_2(dd2)
IMPLICIT NONE
INTEGER,DIMENSION(:,:,:),POINTER :: fun_2
INTEGER,DIMENSION(2:6,3:7,4:8),TARGET :: dd2
fun_2 => dd2
END FUNCTION

END PROGRAM
