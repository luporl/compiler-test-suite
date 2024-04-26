MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(:,:,:),ALLOCATABLE :: arr1

INTERFACE
FUNCTION fun_1(dd)
IMPLICIT NONE
INTEGER,DIMENSION(:,:,:),POINTER :: fun_1
INTEGER,DIMENSION(:,:,:),ALLOCATABLE,TARGET :: dd
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ALLOCATE(arr1(-3:0,1:5,10:15))

ASSOCIATE(aa => fun_1(arr1) + 3)   
  IF(ALL(aa(1:2,1:3,1:4) .EQ. 6)) PRINT*,'pass'
END ASSOCIATE

END PROGRAM

FUNCTION fun_1(dd)
IMPLICIT NONE
INTEGER,DIMENSION(:,:,:),POINTER :: fun_1
INTEGER,DIMENSION(:,:,:),ALLOCATABLE,TARGET :: dd
dd = 3
fun_1 => dd
END FUNCTION
