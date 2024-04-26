program main

 integer*8,dimension(2,2,2:1) ::a
 integer*8,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_8,3_8,4_8,6_8/),(/2,2,0/))
 integer*8::backend
 integer*8,parameter::frontend  = sum(b)
 integer,parameter::p = kind(sum(b))
 a = reshape((/2_8,3_8,4_8,6_8/),(/2,2,0/))
 backend = sum(a)
 print*,frontend
 print *, backend

print*, frontend, '---', backend
 if (frontend.ne.backend) then
  print*, '??? (Error: ) ???'
  else
  print*, 'PASS'
 endif

call check(p, kind(sum(a)))
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


