MODULE mod1
IMPLICIT NONE

INTEGER,PRIVATE :: a = 2,b = 3

TYPE ty
  INTEGER :: nn = 1
  PROCEDURE(fun_1),POINTER,PASS(dy1) :: prc1
END TYPE

TYPE ty2
  INTEGER :: nn2
  CONTAINS
  PROCEDURE,PASS(dy1) :: fun_2
END TYPE

CONTAINS

INTEGER FUNCTION fun_1(dy1,dy2)
IMPLICIT NONE
CLASS(ty),INTENT(IN) :: dy1
INTEGER,INTENT(IN) :: dy2
fun_1 = dy1%nn + dy2
END FUNCTION

INTEGER FUNCTION fun_2(dy1,dy2)
IMPLICIT NONE
CLASS(ty2),INTENT(IN) :: dy1
INTEGER,INTENT(IN) :: dy2
fun_2 = dy1%nn2 + dy2
END FUNCTION

INTEGER FUNCTION fun(dd1,dd2)
IMPLICIT NONE
TYPE(ty) :: dd1
TYPE(ty2) :: dd2
ASSOCIATE(aa => a * b)
  SELECT CASE(aa)
    CASE (6)
    ASSOCIATE(bb => dd1%prc1(a) + dd2%fun_2(b))
      fun = 1
    END ASSOCIATE
  END SELECT
END ASSOCIATE
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
TYPE(ty) :: obj
TYPE(ty2) :: obj2

obj%nn = 5
obj2%nn2 = 10
obj%prc1 => fun_1

res = fun(obj,obj2)

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
