TYPE TY1
REAL(KIND=2)::R2
COMPLEX(KIND=2)::C2
END TYPE
TYPE TY2
TYPE (TY1) :: CMP
END TYPE

TYPE(TY2) :: OBJ
REAL(2)::R2_2
COMPLEX(2)::C2_2
R2_2=6.0_2
C2_2=(7.0_2,8.0_2)
OBJ=TY2(TY1(R2_2,C2_2)) 
IF(OBJ%CMP%R2 .NE. 6)PRINT*,"101"  
IF(OBJ%CMP%C2 .NE. (7,8))PRINT*,"102"  
PRINT*,"PASS"
END

