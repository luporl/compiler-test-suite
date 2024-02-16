type ty(k1,k2,l)
integer(8) ,kind :: k1,k2
integer(8) ,len :: l
real(8) :: arr(l-k1,l-k2)
end type
type(ty(k1=2,k2=3,l=:)),allocatable :: obj
real(8)::x(3,2)
allocate(ty(k2=3,k1=2,l=5)::obj)
obj%arr(1,1)=1.4
obj%arr(2,1)=1.1
obj%arr(3,1)=2.2
obj%arr(1,2)=2.1
obj%arr(2,2)=1.2
obj%arr(3,2)=2.0
x=BESSEL_Y0(obj%arr)
if(.not.(x(1,1)>0.32 .and. x(1,1)<0.35)) print*,101
if(.not.(x(2,1)>0.14 .and. x(2,1)<0.18)) print*,102
if(.not.(x(1,2)>0.50 .and. x(1,2)<0.54)) print*,103
if(.not.(x(2,2)>0.20 .and. x(2,2)<0.24)) print*,104
if(.not.(x(3,1)>0.50 .and. x(3,1)<0.54)) print*,105
if(.not.(x(3,2)>0.50 .and. x(3,2)<0.54)) print*,106
print*,"pass"
End
