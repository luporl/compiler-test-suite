INTEGER :: II=1,JJ=1
REAL(2) :: R1(16)
REAL(2) :: R2(16)
COMPLEX(2) :: C1(9)
COMPLEX(2) :: C2(9)
R2=5     
C2=(3,6)
R1= (/((R2(II+JJ),JJ=1,4),II=1,4)/)  
C1=(/((C2(II+JJ),JJ=1,3),II=1,3)/)
IF(ANY(R1 .NE. 5))PRINT*,"101"
IF(ANY(C1 .NE. (3,6)))PRINT*,"102"
PRINT*,"PASS"
END
