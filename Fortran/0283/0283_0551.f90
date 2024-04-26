MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: r
END TYPE

INTERFACE
INTEGER FUNCTION fun_1(dd1)
INTEGER :: dd1
END FUNCTION 
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1),ALLOCATABLE :: obj,obj2
TYPE(t1),POINTER :: ptr,ptr2
ALLOCATE(obj,ptr)
obj%r = 2
ptr%r = 3

ASSOCIATE(aa => obj , bb => ptr , cc => fun_1(14))
  ptr2 => bb
  ALLOCATE(obj2 , SOURCE = aa)
  SELECT CASE(cc)
    CASE(14)
    obj2%r = 0
  END SELECT
  IF(ASSOCIATED(ptr2))  NULLIFY(ptr2)
END ASSOCIATE

IF(obj2%r .EQ. 0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

INTEGER FUNCTION fun_1(dd1)
INTEGER :: dd1
fun_1 = dd1
END FUNCTION
