INTEGER,PARAMETER::K=2
COMPLEX(KIND=K)::X,Y,Z,A
REAL(KIND=K)::X1,Y1,Z1,A1
X1=100.566_2
Y1=200.789_2
Z1=300.123_2
X=(100.566_2, 10.1_2)
Y=(200.789_2,20.2_2)
Z=(300.123_2,30.3_2)
OPEN( 25, FILE='FORT.45', ACCESS='SEQUENTIAL', FORM='UNFORMATTED' ) 
        WRITE( 25 ) X
        WRITE( 25 ) Y 
        WRITE( 25 ) Z 
        ENDFILE 25

        REWIND 25
        READ( 25) A
CLOSE (25 )
OPEN( 25, FILE='FORT.46', ACCESS='SEQUENTIAL', FORM='UNFORMATTED' ) 
        WRITE( 25 ) X1
        WRITE( 25 ) Y1 
        WRITE( 25 ) Z1 
        ENDFILE 25

        REWIND 25
        READ( 25) A1
CLOSE (25 )
IF(A /= (100.566_2,10.1_2) )PRINT*,"101"
IF(A1 /= 100.566_2 )PRINT*,"102"
PRINT*,"PASS"
END
