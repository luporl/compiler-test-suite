MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0,n=1,m=3
TYPE(tt) :: obj
obj%i = 2

ASSOCIATE(b => a( :fun():obj%i))
  b(n*m: :obj%i) = 1
END ASSOCIATE

IF(ALL(a(5:9:4) .EQ. 1))THEN
  a(5:9:4) = 0
ELSE
  a(5:9:4) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 9
END FUNCTION

END PROGRAM
