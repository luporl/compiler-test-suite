	program main
	dimension a(1000)
	dimension b(1000)
	integer b
	data b/1000*0/
	equivalence(a,b)
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	print *,sum(a)
	call sub
	end
!
        module moda
	dimension x(1000)
	dimension y(1000)
	integer y
	data y/1000*0/
	equivalence(x,y)
	end module
!
	subroutine sub()
	use moda,a=>x,b=>y
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	print *,sum(a)
	end
