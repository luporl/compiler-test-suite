TYPE TY
 COMPLEX(KIND=2),ALLOCATABLE :: A(:), B(:)
END TYPE
TYPE(TY)::OBJ
COMPLEX(KIND=2),ALLOCATABLE :: A(:), B(:)
    ALLOCATE(OBJ%A(3))
    ALLOCATE(A(3))
    A = [ (1.5,10.5), (2.5,20.5), (3.5,30.5) ]
    OBJ%A = [ (1.5,10.5), (2.5,20.5), (3.5,30.5) ]
    CALL MOVE_ALLOC(A, B)
    CALL MOVE_ALLOC(OBJ%A, OBJ%B)
    IF(ALLOCATED(A) .NEQV. .FALSE.) PRINT*,"101"
    IF(ALLOCATED(B) .NEQV. .TRUE.) PRINT*,"102"
    IF(ALLOCATED(OBJ%A) .NEQV. .FALSE.) PRINT*,"103"
    IF(ALLOCATED(OBJ%B) .NEQV. .TRUE.) PRINT*,"104"
    IF(ANY (B /= [ (1.5,10.5), (2.5,20.5), (3.5,30.5) ]))PRINT*,"105"
    IF(ANY (OBJ%B /= [ (1.5,10.5), (2.5,20.5), (3.5,30.5) ]))PRINT*,"106"
 PRINT*,"PASS"
END PROGRAM 
