PROGRAM main
IMPLICIT NONE

COMPLEX(KIND = 4),DIMENSION(:),ALLOCATABLE :: cmp1

ALLOCATE(cmp1(3:12))
cmp1 = (24.35,-12.10)

ASSOCIATE(aa => fun(cmp1(::2)) + (/(11.10,21.10),(22.20,32.20),(-32.90,12.11), &
                (15.20,33.10),(-22.45,31.24)/) - (11.45,32.40))
  IF(INT(AIMAG(aa(3))) .EQ. -7) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF 
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
COMPLEX(KIND = 4),DIMENSION(:) :: dd1
COMPLEX(KIND = 4),DIMENSION(:),ALLOCATABLE :: fun
ALLOCATE(fun(5))
fun = dd1 + (11.10,25.22)
END FUNCTION

END PROGRAM
