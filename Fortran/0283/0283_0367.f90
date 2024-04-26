MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL(KIND = 16) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL(KIND = 16) :: r2
END TYPE

INTERFACE OPERATOR( + )
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

FUNCTION addit(dd1,dd2)
IMPLICIT NONE
CLASS(t2),INTENT(IN) :: dd1,dd2
CLASS(t2),ALLOCATABLE :: addit
ALLOCATE(addit)
addit%r2 = dd1%r2 + dd2%r2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),ALLOCATABLE :: allc2
CLASS(*),ALLOCATABLE :: allc

ALLOCATE(allc2)
allc2%r2 = 24134223.172400_16
ALLOCATE(t2 :: allc)

SELECT TYPE(allc)
  CLASS IS(t2)
  allc%r2 = 4652565.1466200_16
  ASSOCIATE(aa => allc + allc2)
    IF(int(aa%r2) .EQ. int(28786788.31920_16)) THEN
      PRINT*,'pass'
    ELSE
      PRINT*,101,aa%r2
    END IF
  END ASSOCIATE
END SELECT

END PROGRAM
