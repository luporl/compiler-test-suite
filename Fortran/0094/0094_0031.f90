program pro
implicit none
interface
  subroutine sub(n,x)
    integer :: n(2,2)
    real :: x(2,2)
  end subroutine sub
end interface
integer, allocatable :: n1(:,:)
real, allocatable :: x1(:,:)
allocate(n1(2,2),x1(2,2))
n1(1,1)= 1
n1(1,2)= 2
n1(2,1)= 1
n1(2,2)= 2
x1(1,1)= 1.4
x1(1,2)= 2.0
x1(2,1)= 1.8
x1(2,2)= 2.2
call sub(n1,x1)
end

subroutine sub(n,x)
  implicit none
  integer :: n(2,2)
  real :: x(2,2)
  real :: y(2,2)

y=BESSEL_JN(n=n,x=x)
    if( .not.(y(1,1)>0.53 .and. y(1,1)<0.55))  print *,101
    if( .not.(y(2,1)>0.57 .and. y(2,1)<0.59))  print *,102
    if( .not.(y(1,2)>0.34 .and. y(1,2)<0.36))  print *,103
    if( .not.(y(2,2)>0.38 .and. y(2,2)<0.40))  print *,104
    print*,"pass"
end subroutine sub
