call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm533 pass'
end
subroutine test01()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(a)
integer,parameter,dimension(3) :: u=ubound(a)
if (l(1).ne.1) call errtra
if (u(1).ne.3) call errtra
if (l(2).ne.2) call errtra
if (u(2).ne.3) call errtra
if (l(3).ne.1) call errtra
if (u(3).ne.0) call errtra
end

subroutine test02()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(-a)
integer,parameter,dimension(3) :: u=ubound(-a)
if (l(1).ne.1) call errtra
if (u(1).ne.3) call errtra
if (l(2).ne.1) call errtra
if (u(2).ne.2) call errtra
if (l(3).ne.1) call errtra
if (u(3).ne.0) call errtra
end

subroutine test03()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((a))
integer,parameter,dimension(3) :: u=ubound((a))
if (l(1).ne.1) call errtra
if (u(1).ne.3) call errtra
if (l(2).ne.1) call errtra
if (u(2).ne.2) call errtra
if (l(3).ne.1) call errtra
if (u(3).ne.0) call errtra
end

subroutine test04()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(0+a)
integer,parameter,dimension(3) :: u=ubound(0+a)
if (l(1).ne.1) call errtra
if (u(1).ne.3) call errtra
if (l(2).ne.1) call errtra
if (u(2).ne.2) call errtra
if (l(3).ne.1) call errtra
if (u(3).ne.0) call errtra
end

subroutine test05()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(0+(a)+0)
integer,parameter,dimension(3) :: u=ubound(0+(a)+0)
if (l(1).ne.1) call errtra
if (u(1).ne.3) call errtra
if (l(2).ne.1) call errtra
if (u(2).ne.2) call errtra
if (l(3).ne.1) call errtra
if (u(3).ne.0) call errtra
end
