COMPLEX(KIND=2),PARAMETER::CC=(10.5_2,2)
REAL(KIND=2),PARAMETER::R2=11.5_2
REAL(KIND=2),PARAMETER::R1=9.5_2
COMPLEX(KIND=8)::C8_1=DCMPLX(CC)
COMPLEX(KIND=8)::C8_2=DCMPLX(R2)
COMPLEX(KIND=8)::C8_3=DCMPLX(R1,R2)
COMPLEX(KIND=8)::C8_4=DCMPLX(4,R2)
COMPLEX(KIND=8)::C8_5=DCMPLX(R2,4.5)
COMPLEX(KIND=8)::C8_6=DCMPLX(R2,5.5_8)
COMPLEX(KIND=8)::C8_8=DCMPLX(R2,5.5_16)
COMPLEX(KIND=8)::C8_7=DCMPLX(R2,65505_8)
IF(C8_1 /= (10.5,2.0))PRINT*,"101"
IF(C8_2 /= (11.5,0.0))PRINT*,"102"
IF(C8_3 /= (9.5,11.5))PRINT*,"103"
IF(C8_4 /= (4.0,11.5))PRINT*,"104"
IF(C8_5 /= (11.5,4.5))PRINT*,"105"
IF(C8_6 /= (11.5,5.5))PRINT*,"106"
IF(C8_7 /= (11.5,65505.0))PRINT*,"107"
IF(C8_8 /= (11.5,5.5))PRINT*,"108"
PRINT*,"PASS"
END
