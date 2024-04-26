program main
 
 complex*32,dimension(2,2,2:1) ::a
 complex*32,dimension(2,2)::backend
 complex*32,parameter,dimension(2,2,2:1) ::b = RESHAPE((/(2.0_16,2.0_16),(3.0_16,3.0_16),(4.0_16,4.0_16),(6.0_16,6.0_16)/),(/2,2,0/))
 complex*32,parameter,dimension(2,2)::frontend = sum(b,dim=3) 
 
 integer,parameter::p = kind(sum(b,dim=3))
 a = reshape((/(2.0_16,2.0_16),(3.0_16,3.0_16),(4.0_16,4.0_16),(6.0_16,6.0_16)/),(/2,2,0/)) 
 backend = sum(a,dim=3)
 print*,frontend
 print *, backend
 
 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: C32->C32) ???'
  else
  print*, 'C32-> C32'
 endif
 enddo
  enddo 

 call check(p, kind(sum(a,dim=3)))

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
