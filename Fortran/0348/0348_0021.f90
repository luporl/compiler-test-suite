	subroutine sub()
	integer m,a
	common/com/m,a(0:7)
	do i=1,m
        a(i) = 1.
	if( i >= m ) then
          a(i) = 2.
	endif
	end do
	end
	integer m,a
	common/com/m,a(0:7)
        a=0
	m = 6
	call sub
	if( all(a .eq. (/0,1,1,1,1,1,2,0/)) ) then
        print *,"PASS"
        else
	print *, a
        print *,"NG"
	end if
	end
