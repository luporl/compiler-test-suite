COMPLEX(KIND=2)::C2(2,2),C3(2,2)
C2=RESHAPE([(1.5_2,1.5_2),(1.5_2,1.5_2),(1.5_2,1.5_2),(1.5_2,1.5_2)],[2,2])
C3=(1.5_2,1.5_2)
IF(ANY(C2 /=C3))PRINT*,"101"
PRINT*,"PASS"

END
