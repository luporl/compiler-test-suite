INTEGER IH(3)
NAMELIST /X/IH
WRITE(1,*)'&X IH=1 2 3 /'
REWIND 1
READ(1,NML=X)
PRINT *,IH(1)
PRINT *,IH(2)
PRINT *,IH(3)
PRINT *,'*** ok ***'
CLOSE(1,STATUS='DELETE')
END
