REAL*2,PARAMETER::RR1(4)=44,RR2(4:8,5:10)=55
COMPLEX(KIND=2)::CC1(4),CC2(4:8,5:10,1:8)
INTEGER::RES1(1)=UBOUND(RR1)
INTEGER::RES2(2)=UBOUND(RR2)
INTEGER::RES3=UBOUND(RR2,DIM=2)
INTEGER::RES4=UBOUND(CC1,DIM=1)
INTEGER::RES5(3)=UBOUND(CC2)
INTEGER::RES6=UBOUND(CC2,DIM=3)
IF(ANY(RES1 /= [4]))PRINT*,"101"
IF(ANY(RES2 /= [8,10]))PRINT*,"102"
IF(RES3 /= 10)PRINT*,"103"
IF(ANY(RES4 /= [4]))PRINT*,"104"
IF(ANY(RES5 /= [8,10,8]))PRINT*,"105"
IF(RES6 /= 8)PRINT*,"106"
PRINT*,"PASS"
END
