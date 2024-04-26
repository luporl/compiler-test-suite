	COMMON /COM/X,Y
	COMPLEX*16   ZERO,ONE,X,Y
	PARAMETER   (ZERO=(0.0D+0, 0.0D+0),ONE=(1.0D+0, 0.0D+0))	
	CALL SUB(ZERO,ONE)
	IF( X .eq. ZERO .and. Y .eq. ONE ) THEN
	  PRINT *,'PASS'
	ELSE
	  PRINT *,'NG'
	ENDIF
	END
	SUBROUTINE SUB(C1,C2)
	COMMON /COM/X,Y
	COMPLEX*16   C1,C2,X,Y
	X = C1
	Y = C2
	END
