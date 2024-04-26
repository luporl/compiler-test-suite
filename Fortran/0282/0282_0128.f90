program main
integer*2, parameter::a(12) = (/1_2, 2_2, 3_2, 4_2, &
                             5_2, 6_2, 7_2, 8_2, &
							 1_2, 2_2, 3_2, 4_2 /)
integer*2, parameter::b(3,2,2) = reshape(a, (/3,2,2/))

integer*4, parameter::c(4) = (/1_4, 2_4, 3_4, 4_4/)

integer*4, parameter::d(2,2) = reshape(c, (/2,2/))

integer*2::h(3,2,2) = eoshift(b,d)

integer*2::m(3,2,2)

integer::i,j,k

integer::z(3)

integer::n(3) = shape(eoshift(b,d))
integer::o = kind(eoshift(b,d))

print*,shape(eoshift(b,d))

m = eoshift(b,d)
z = shape(eoshift(b,d))

do i=1,3
do j=1,2
do k=1,2
print*, h(i,j,k), '--', m(i,j,k)
if(h(i,j,k).ne.m(i,j,k)) then
print*, '??? (Error:) ???'
else
print*, 'pass'
endif
enddo
enddo
enddo

call check(n,z)
call check1(o, kind(eoshift(b,d)))

end

subroutine check(x, y)
integer x(3), y(3)
integer::i
print*, x,'--',y
do i=1,3
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
