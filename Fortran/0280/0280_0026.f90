TYPE TY
COMPLEX(KIND=2),ALLOCATABLE :: C2(:)
TYPE(TY),ALLOCATABLE :: CMP
END TYPE

TYPE(TY) :: OBJ1,OBJ2
ALLOCATE(OBJ2%C2(4))
OBJ2%C2=(5,6)
ALLOCATE(OBJ1%CMP,SOURCE=OBJ2)
IF(ANY(OBJ1%CMP%C2 .NE. (5,6)))PRINT*,"101"
IF(ALLOCATED(OBJ1%CMP%C2) .EQV. .FALSE.)PRINT*,"102"
PRINT*,"PASS"
END
