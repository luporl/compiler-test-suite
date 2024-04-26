TYPE TY
REAL(8) :: R8(2) = 3.0
REAL(4) :: R4(2) = 2.0
REAL(2) :: R2(4) = 1.0

COMPLEX(8) :: C8(2) = (1,1)     
COMPLEX(4) :: C4(2) = (4,5)     
COMPLEX(2) :: CMP(2)
COMPLEX(2) :: C2(2) = (2,3)     

INTEGER(1) :: I1(4) = 4
INTEGER(2) :: I2(2) = 5
INTEGER(4) :: I4(2) = 6
INTEGER(8) :: I8(2) = 7

END TYPE

TYPE(TY) :: OBJ

OBJ%CMP(2)=OBJ%C2(1)-OBJ%R2(1)
IF(OBJ%CMP(2) .NE. (1,3))PRINT*,"101"
OBJ%CMP=OBJ%C2+OBJ%R4
IF(ANY(OBJ%CMP .NE.(2+(2,3))))PRINT*,"102"
OBJ%CMP(1)=OBJ%R8(1)*OBJ%C2(1)
IF(OBJ%CMP(1) .NE. (6,9))PRINT*,"103"

OBJ%CMP(1)=OBJ%I1(1)-OBJ%C2(2)
IF(OBJ%CMP(1) .NE. (2,-3))PRINT*,"104"
OBJ%CMP(2)=OBJ%C2(2)-OBJ%I2(1)
IF(OBJ%CMP(2) .NE. (-3,3))PRINT*,"105"
OBJ%CMP=OBJ%I4+OBJ%C2
IF(ANY(OBJ%CMP .NE.(6+(2,3))))PRINT*,"106"
OBJ%CMP(1)=OBJ%C2(1)*OBJ%I8(2)
IF(OBJ%CMP(1) .NE. (14,21))PRINT*,"107"

OBJ%CMP(2)=OBJ%C2(1)+OBJ%C2(1)
IF(OBJ%CMP(2) .NE. (4,6))PRINT*,"108"
OBJ%CMP=OBJ%C4-OBJ%C2
IF(ANY(OBJ%CMP .NE.((4,5)-(2,3))))PRINT*,"109"
OBJ%CMP(1)=OBJ%C8(1)*OBJ%C2(2)
IF(OBJ%CMP(1) .NE. (-1,5))PRINT*,"110"

PRINT*,"PASS"
END
