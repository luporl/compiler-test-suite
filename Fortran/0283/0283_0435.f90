MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER,DIMENSION(:),ALLOCATABLE :: arr
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
ALLOCATE(obj%arr(3:12))

obj%arr = 5

ASSOCIATE(aa => obj%arr(::2))
  aa = 1
IF(ALL(aa(::2) .EQ. 1)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
END ASSOCIATE

END PROGRAM
