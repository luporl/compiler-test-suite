DIMENSION IDATA(5)
DATA IDATA/1,2,3,4,5/
WRITE(1) (I,I=1,5)
WRITE(1) (I,I=6,10)
WRITE(1) (I,I=11,15)
WRITE(1) (I,I=16,20)
BACKSPACE 1
BACKSPACE 1
BACKSPACE 1
READ(1)IDATA
ENDFILE 1
DO I=1,5
  IF(IDATA(i) .NE. I+1) CONTINUE
  IF(I .EQ. 5) PRINT *,'*** ok ***'
ENDDO
CLOSE(1,STATUS='DELETE')
END
