!
	subroutine test1(i1,n,a,m)
	integer n,m
	integer*1 i1(n)
	real    a(m)
	do i=1,m,size(a)/m
	  a(i) = a(i) + 1
	end do
	end
!
	subroutine test2(i1,n,a,m)
	integer n,m
	integer*1 i1(n)
	real    a(m)
	do i=1,ubound(a,dim=1)
	  a(i) = a(i) + 1
	end do
	end
!
	subroutine test3(i1,n,a,m)
	integer n,m
	integer*1 i1(n)
	real    a(m)
	do i=lbound(a,dim=1),m
	  a(i) = a(i) + 1
	end do
	end
!
	integer n,m
	parameter(n = 1000,m=2000 )
	integer*1 i1(n)
	real    a(m)
	i1 = 0
	a = 0
	call test1(i1,n,a,m)
	print *,merge("OK1","NG1",sum(a)==m)
	a = 0
	call test2(i1,n,a,m)
	print *,merge("OK2","NG2",sum(a)==m)
	a = 0
	call test3(i1,n,a,m)
	print *,merge("OK3","NG3",sum(a)==m)
	end
