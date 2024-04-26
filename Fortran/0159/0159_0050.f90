call test01()
print *,'pass'
end

module mod
integer ,allocatable :: a0(:)
contains
recursive subroutine xxx()
call sub1()
call sub2()
call sub3()
contains
subroutine sss()
a0=1
end subroutine
recursive subroutine aaa()
allocate (a0(10))
end subroutine
recursive subroutine sub1()
call aaa()
end subroutine
recursive subroutine sub2()
a0=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
end subroutine
end

subroutine test01() 
use mod
call xxx()
end subroutine

