	subroutine sub(a,b,c,inbase,n)
	implicit none
	integer n,i
	real*8 a(n),b(n),c(n),x,y
	pointer(inbase,y)
	pointer(base,x)
	do i=1,n
	  if( a(i) .lt. b(i) ) then
            base=inbase
            c(i) = x
          endif
	end do
	end

	program main
	implicit none
	integer n,i
	parameter(n=10)
	integer z(n)
	real*8 a(n),b(n),c(n),x
	c = 0
	x = 1
	do i=1,n
	a(i) = i
	b(i) = n - i
	end do
	call sub(a,b,c,loc(x),n)
	do i=1,n
	z(i) = c(i)
	end do
	print *,z
	end
	
