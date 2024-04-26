PROGRAM main
IMPLICIT NONE

INTEGER :: res
INTEGER,DIMENSION(3:12,3:12,3:12,3:12) :: arr1 = 10
INTEGER,DIMENSION(3:12,3:12) :: arr2 = 20

res = fun(arr1(5:10,5:10,5:10,5:10),arr2(5:10,5:10))

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1,dd2)
IMPLICIT NONE
INTEGER :: fun
INTEGER,INTENT(IN) :: dd1(5,*)
INTEGER,INTENT(IN) :: dd2(2:,2:)
ASSOCIATE(aa => dd1(5,10) * 3 * dd2(5,5))
  IF(600 .EQ. aa) THEN
    fun = 1
  ELSE
    fun = 0
  END IF
END ASSOCIATE 
END FUNCTION

END PROGRAM
