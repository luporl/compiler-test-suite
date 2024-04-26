REAL(2) :: RES(2)

REAL(2) :: R2(2)
REAL(4) :: R4(2)
REAL(8) :: R8(2)

INTEGER(1) :: I1(2)
INTEGER(2) :: I2(2)
INTEGER(4) :: I4(2)
INTEGER(8) :: I8(2)

COMPLEX(2) :: C2(2)
COMPLEX(4) :: C4(2)
COMPLEX(8) :: C8(2)
COMPLEX(16) :: C16(2)

RES=3.0_2

R2(1) = RES(2)
IF(R2(1) .NE. 3.0_2) PRINT*,"101"
R4(2)=RES(1)
IF(R4(2) .NE. 3.0_4) PRINT*,"102"
R8(1)=RES(2)
IF(R8(1) .NE. 3.0_8) PRINT*,"103"

I1(2) = RES(1)
IF(I1(2) .NE. 3.0_2) PRINT*,"104"
I2(1) = RES(2)
IF(I2(1) .NE. 3.0_2) PRINT*,"105"
I4(2) = RES(1)
IF(I4(2) .NE. 3.0_2) PRINT*,"106"
I8(1) = RES(2)
IF(I8(1) .NE. 3.0_2) PRINT*,"107"

C2(1)=RES(1)
IF(C2(1) .NE. (3.0_2,0.0_2))PRINT*,"108"
C4(2)=RES(2)
IF(C4(2) .NE. (3.0_4,0.0_4))PRINT*,"109"
C8(1)=RES(1)
IF(C8(1) .NE. (3.0_8,0.0_8))PRINT*,"110"
C16(2)=RES(2)
IF(C16(2) .NE. (3.0_16,0.0_16))PRINT*,"111"

PRINT*,"PASS"
END

