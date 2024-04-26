program main

 integer,dimension(2,2,2:1) ::a
 integer,dimension(2,2)::backend
 integer,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2,3,4,6/),(/2,2,0/))
 integer,parameter,dimension(2,2)::frontend = maxval(b,dim=3)
 integer::n(2)
 integer,parameter::p = kind(maxval(b,dim=3))
 integer,parameter::g(2) = shape(maxval(b,dim=3))
 a = reshape((/2,3,4,6/),(/2,2,0/))
 backend = maxval(a,dim=3)
 print*,frontend
 print *, backend
 n = shape(maxval(a,dim=3))
 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: I->I) ???'
  else
  print*, 'I -> I'
 endif
 enddo
  enddo

call check(g,n)
call check1(p, kind(maxval(a,dim=3)))
end
subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

