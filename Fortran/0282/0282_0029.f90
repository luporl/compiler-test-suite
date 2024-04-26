program main
logical*4, parameter::a(48) = (/ .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true., &
								 .true., .false.,  .true.,  .true., .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true.,  .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false.,  .true., .false.,  .true.,  .true./)
logical*4, parameter::b(3,2,2,2,2) = reshape(a, (/3,2,2,2,2/))
integer, parameter::z = 2
logical*4::c(3,2,2,2) = any(b,z)
logical*4::d(3,2,2,2)
integer::p(4)
integer::e(4) = shape(any(b,z))
integer::f = kind(any(b,z))
integer::i,j,k,l
d = any(b,z)
p = shape(any(b,z))
do i=1,3
do j=1,2
do k=1,2
do l=1,2
print*, c(i,j,k,l), '--', d(i,j,k,l)
if(c(i,j,k,l).neqv.d(i,j,k,l)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo
enddo
enddo
enddo
call check(e,p)

call check1(f, kind(any(b,z)))

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
