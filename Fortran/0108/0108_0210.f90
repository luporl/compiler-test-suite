program main
integer,parameter :: N=10
real(kind=4),parameter :: val=1._4
real(kind=4),dimension(1:N) :: a1,b1
real(kind=4),dimension(1:N,1:N) :: a2,b2
real(kind=4) r
integer(kind=4) i

i = 1
r  = val
a1 = val*val
b1 = val*val*val
a2 = val*val*val*val
b2 = val*val*val*val*val
r = r + a1(i)+a2(i,i)+b1(i)+b2(i,i)
print *,r
end program
