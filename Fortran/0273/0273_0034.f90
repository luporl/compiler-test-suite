REAL*2::R2(10)
COMPLEX(KIND=2)::C2(10)
LOGICAL::L1=IS_CONTIGUOUS(R2(1:10:2))
LOGICAL::L2=IS_CONTIGUOUS(R2(1:5))
LOGICAL::L3=IS_CONTIGUOUS(C2(1:10:2))
LOGICAL::L4=IS_CONTIGUOUS(C2(1:5))
R2=10.5
C2=(1.5,2.5)

IF(L1.NEQV. .FALSE.)PRINT*,101 
IF(L2 .NEQV. .TRUE.)PRINT*,102
IF(L3 .NEQV. .FALSE.)PRINT*,103
IF(L4 .NEQV. .TRUE.)PRINT*,104
CALL SUB(R2(1:5),R2(1:10:2),C2(1:5),C2(1:10:2))
PRINT*,"PASS"
CONTAINS
SUBROUTINE SUB(D1,D2,D3,D4)
REAL*2,INTENT(OUT)::D1(5),D2(5)
COMPLEX(KIND=2),INTENT(OUT)::D3(5),D4(5)
LOGICAL::LL1=IS_CONTIGUOUS(D1)
LOGICAL::LL2=IS_CONTIGUOUS(D2)
LOGICAL::LL3=IS_CONTIGUOUS(D3)
LOGICAL::LL4=IS_CONTIGUOUS(D4)
IF(LL1.NEQV. .TRUE.)PRINT*,201 
IF(LL2 .NEQV. .TRUE.)PRINT*,202
IF(LL3 .NEQV. .TRUE.)PRINT*,203
IF(LL4 .NEQV. .TRUE.)PRINT*,204
END SUBROUTINE 
END
