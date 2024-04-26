MODULE mod1
IMPLICIT NONE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
INTEGER,DIMENSION(20) :: arr1 = 10
INTEGER,DIMENSION(10) :: arr2 = 20
INTEGER,DIMENSION(4,3,4) :: assd = 15

res = fun_1(arr1(2::2),arr2,assd)

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_1(dd1,dd2,dd3)
IMPLICIT NONE
INTEGER,DIMENSION(5:14) :: dd1
INTEGER,DIMENSION(20:29) :: dd2
INTEGER,DIMENSION(1,*) :: dd3
INTEGER :: fun_1
ASSOCIATE(aa => dd1(5::2) + dd2(:29:2) , bb => dd3(1,5) * (/12,11,10,11,9/))
  ASSOCIATE(cc => DOT_PRODUCT(aa,bb))
  SELECT CASE(cc)
  CASE(23850)
  fun_1 = 1
  END SELECT
  END ASSOCIATE
END ASSOCIATE

END FUNCTION

END PROGRAM
