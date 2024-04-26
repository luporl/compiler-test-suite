COMPLEX(2) :: CMP
COMPLEX(2) :: CMP_DSB(5)

REAL(2) :: R2 = 1.0
REAL(2) :: R2_AR(4) = 4
REAL(8) :: R8(5) = 10.0

INTEGER(2) :: I2 = 5
INTEGER(8) :: I8(5) = 2

COMPLEX(2) :: C2 = (2,3)     
COMPLEX(2) :: C2_AR(5) = (10,10)     
COMPLEX(8) :: C8(5) = (1,1)     

CMP=C2/R2
IF(CMP .NE. (2,3))PRINT*,"101"

CMP_DSB(2)=C2_AR(3)/R8(1)
IF(CMP_DSB(2) .NE. (1,1))PRINT*,"102"

CMP=I2/C2
IF(abs(CMP -    (5/(2,3)))>0.01)PRINT*,"103"

CMP_DSB(3)=C2_AR(1)/I8(1)
IF(CMP_DSB(3) .NE. ((10,10)/2))PRINT*,"104"

CMP_DSB(4)=C2_AR(2)/C8(2)
IF(CMP_DSB(4) .NE. ((10,10)/(1,1)))PRINT*,"105"

CMP_DSB(1)=C2_AR(1)/R2_AR(2)
IF(CMP_DSB(1) .NE. ((10,10)/4))PRINT*,"106"
PRINT*,"PASS"
END
