module m1
type ty
  integer :: n(2)
  real :: x(2)
  real :: y(2)
end type ty
type(ty):: obj
end module m1

program pro
use m1
implicit none
obj%n(1)= 1
obj%n(2)= 2
obj%x(1)= 1.0
obj%x(2)= 2.0
obj%y=BESSEL_JN(obj%n,obj%x)
   if( .not.(obj%y(1)>0.43 .and. obj%y(1)<0.45))  print *,101
   if( .not.(obj%y(2)>0.34 .and. obj%y(2)<0.36))  print *,102
    print*,"pass"
end
