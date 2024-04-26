module m1
  real :: arr(2,2)
  integer :: d
  real :: x(2)
end module m1
program pro
use m1
implicit none
d=1
arr(1,1)= 3.0
arr(1,2)= 2.0
arr(2,1)= 4.0
arr(2,2)= 5.0
x=NORM2(arr,d)
if(.not.(x(1)<=5.1 .and. x(1)>=4.9)) print*,101
if(.not.(x(2)<=5.4 .and. x(2)>=5.2)) print*,102
print*,"pass"
end
