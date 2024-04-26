MODULE M1
 CONTAINS
SUBROUTINE S01()
TYPE X
 REAL(2):: R
 COMPLEX(2):: I
END TYPE
COMPLEX(2),POINTER :: C1(:)
CLASS(*),POINTER :: C2(:)
REAL(2),POINTER :: RS
ALLOCATE(C1(2),SOURCE=[(1.0_2,2.0_2),(3.0_2,4.0_2)])
ALLOCATE(C2(2),SOURCE=[X(1,(2,3)),X(3,(4,5))])
RS=> C1(1)%IM
SELECT TYPE(C2)
TYPE IS (X)
 IF(C2(2)%R .NE. 3)PRINT*,"101" 
 IF(C2(2)%I .NE. (4,5))PRINT*,"102" 
CLASS DEFAULT
 PRINT*,"103"
END SELECT

IF (RS/=2) PRINT *,103
END SUBROUTINE
END

USE M1
CALL S01()
PRINT *,'PASS'
END

