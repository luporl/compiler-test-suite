Program Main
character(len =2,kind=4),dimension(2,3)::a
character(len =2, kind = 4),parameter, dimension (2,3) :: b = reshape((/"ab","bc","cd","ef","gh","ab"/), (/2,3/))
integer,dimension(3)::d
integer,parameter,dimension(3) :: c = minloc(b,dim =1)
integer,parameter::p = kind(minloc(b,dim =1))
a = reshape((/"ab","bc","cd","ef","gh","ab"/), (/2,3/))
d = minloc(a,dim =1)
print*,c
print*,d

do i = 1,3
print*, c(i), '---', d(i)
if (c(i).ne.d(i)) then
print*, '??? (Error: UTF -> I) ???'
else
print*, 'UTF -> I'
endif
enddo
call check(p, kind(minloc(a,dim =1)))
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
