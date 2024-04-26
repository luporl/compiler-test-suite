	complex*8 function fun(c1,c2)
	complex*8 c1,c2
	fun = conjg(c1 + c2)
	end
!
	complex*16 function fun16(c1,c2)
	complex*16 c1,c2
	fun16 = conjg(c1 + c2)
	end
!
	complex*8  fun
	complex*16 fun16
	if( fun((1.0,2.0),(3.0,4.0)) .ne. (4.0,-6.0) )then
	  print *,"NG1"
        endif
	if( fun16((1.0_8,2.0_8),(3.0_8,4.0_8)).ne.(4.,-6.)) then
	  print *,"NG2"
	endif
	print *,"PASS"
	end

