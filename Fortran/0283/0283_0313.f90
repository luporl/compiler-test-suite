MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr2 = (/13,24,0,9,1/)
INTERFACE
FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(5) :: dd1,fun_1
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr1 

ASSOCIATE(aa => (/12,3,24,5,6/) +  10 +  fun_1(arr1) + MAXVAL(arr2))
  IF(aa(3) .EQ. 61) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM

FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(5) :: dd1,fun_1
dd1 = 3
fun_1 = dd1
END FUNCTION
