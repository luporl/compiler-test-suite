COMPLEX(2),TARGET :: C2(2)=(5,6)
REAL(2),POINTER:: R2
DATA R2/C2(1)%IM/ 
IF(R2 .NE. 6)PRINT*,"101"
PRINT*,"PASS"
END
