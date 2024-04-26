REAL(2) :: RES
REAL(2) :: RES_DSB(5)

REAL(2) :: R2 = 1.0
REAL(2) :: R2_AR(4) = 4
REAL(16) :: R16(5) = 10.0

INTEGER(1) :: I1 = 5
INTEGER(4) :: I4(5) = 2

COMPLEX(2) :: C2 = (2,3)     
COMPLEX(2) :: C2_AR(5) = (10,10)     

RES=R2**R2
IF(RES .NE. ((1.0)**(1.0)))PRINT*,"101"

RES_DSB(2)=R2_AR(3)**R16(1)
IF(RES_DSB(2) .NE. (4**(10)))PRINT*,"102"

RES=I1**R2
IF(RES .NE. (5**(1.0)))PRINT*,"103"

RES_DSB(3)=R2_AR(1)**I4(1)
IF(RES_DSB(3) .NE. (4**2))PRINT*,"104"

RES_DSB(4)=C2_AR(2)**R2_AR(2)
IF(RES_DSB(4) .NE. ((10,10)**(4)))PRINT*,"105"

RES=R2**C2
IF(RES .NE. ((1.0)**(2,3)))PRINT*,"106"
PRINT*,"PASS"
END
