program main
logical*4, parameter::a(48) = (/ .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true. /)
logical*4, parameter::b(3,2,2,2,2) = reshape(a, (/3,2,2,2,2/))
integer,parameter::c = 2
integer::d(3,2,2,2) = count(b,c)
integer::e(3,2,2,2)
integer::i,j,k,l
integer::m(4)
integer::n(4) = shape(count(b,c))
integer::o = kind(count(b,c))
e = count(b,c)
m = shape(count(b,c))

do i=1,3
do j=1,2
do k=1,2
do l=1,2
print*, d(i,j,k,l), '--', e(i,j,k,l)
if(d(i,j,k,l).ne.e(i,j,k,l)) then
print*, '??? (Error: L->I) ???'
else
print*, 'L -> I'
endif
enddo
enddo
enddo
enddo

call check(n,m)
call check1(o, kind(count(b,c)))

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
