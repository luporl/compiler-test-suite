program main
real*16, parameter::a(96) = (/21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
                              21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
                              21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16, &
							  21.0_16, 32.0_16, 43.0_16, 54.0_16, 65.0_16, 46.0_16, 37.0_16, 28.0_16  /)
real*16, parameter::b(2,4,4,3) = reshape(a, (/2,4,4,3/))
integer*4, parameter::c(24) = (/1_4, 2_4, 3_4, 4_4, 5_4, 6_4, 7_4, 8_4, &
							    1_4, 2_4, 3_4, 4_4, 5_4, 6_4, 7_4, 8_4, &
							    1_4, 2_4, 3_4, 4_4, 5_4, 6_4, 7_4, 8_4/)
integer*4, parameter::d(2,4,3) = reshape(c, (/2,4,3/))
integer*4, parameter::e = 3
real*16::f(2,4,4,3) = cshift(b,d,e)
real*16::g(2,4,4,3)
integer::i,j,k,l
integer::z(4)
integer::m(4) = shape(cshift(b,d,e))
integer::n = kind(cshift(b,d,e))
g = cshift(b,d,e)
z = shape(cshift(b,d,e))

do i =1,2
do j =1,4
do k =1,4
do l =1,3
print*, f(i,j,k,l), '--', g(i,j,k,l)
if(f(i,j,k,l).ne.g(i,j,k,l)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
enddo
enddo

call check(m,z)
call check1(n, kind(cshift(b,d,e)))

end

subroutine check(x, y)
integer x(4), y(4)
integer::i
print*, x,'--',y
do i=1,4
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
