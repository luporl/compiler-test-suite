program main
  integer y(10)/1,10,8*0/
  integer n/0/
  n = n + ifunc1(y)
  n = n + ifunc2(y)
  n = n + ifunc3(y)
  n = n + ifunc4(y)

  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1(y)
  integer y(10),z(10,10)
  integer x/0/
  ifunc1 = 0
  i=3
  k=3
  x = y(1)
  do k=1,y(2)
     do i=1,x
        z(k,i) = 1
     enddo
  enddo

  if (i.ne.2 .or. k.ne.11) then
     print *,"NG1",i,k,z(1,1)
     ifunc1 = 1
  endif
end function ifunc1

integer function ifunc2(y)
  integer y(10),z(10,10)
  ifunc2 = 0
  i=3
  k=3
  do k=1,y(2)
     do i=1,y(1)
        z(k,i) = 1
     enddo
  enddo

  if (i.ne.2 .or. k.ne.11) then
     print *,"NG2",i,k,z(1,1)
     ifunc2 = 1
  endif
end function ifunc2

integer function ifunc3(y)
  integer y(10),z(10,10)
  integer x/0/
  ifunc3 = 0
  i=3
  k=3
  x = y(1)
  do k=1,y(2)
     do i=1,x
        z(i,k) = 1
     enddo
  enddo

  if (i.ne.2 .or. k.ne.11) then
     print *,"NG3",i,k,z(1,1)
     ifunc3 = 1
  endif
end function ifunc3

integer function ifunc4(y)
  integer y(10),z(10,10)
  ifunc4 = 0
  i=3
  k=3
  do k=1,y(2)
     do i=1,y(1)
        z(i,k) = 1
     enddo
  enddo

  if (i.ne.2 .or. k.ne.11) then
     print *,"NG4",i,k,z(1,1)
     ifunc4 = 1
  endif
end function ifunc4
