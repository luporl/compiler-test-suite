Program Main
character(len =1,kind=4),dimension(2,3)::a
character(len =1, kind = 4),parameter, dimension (2,3) :: b = reshape((/'a','b','c','d','e','f'/), (/2,3/))
character(len =1 , kind = 4),dimension(3)::d
character(len =1 , kind = 4),parameter,dimension(3)  :: c = maxval(b,dim =1)
integer,parameter::p = kind(maxval(b,dim =1))
a = reshape((/'a','b','c','d','e','f'/), (/2,3/))
d = maxval(a,dim =1)
print*,c
print*,d

do i = 1,3
print*, c(i), '---', d(i)
if (c(i).ne.d(i)) then
print*, '??? (Error: UTF -> UTF) ???'
else
print*, 'UTF -> UTF'
endif
enddo
call check(p, kind(maxval(a,dim =1)))
end
subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
