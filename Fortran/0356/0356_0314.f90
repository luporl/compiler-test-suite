program main
  integer y(10)/10*0/
  integer x/0/
  i=3
  k=3
  m = y(1) + 10
  x = y(1)
  do k=1,x
     do i=1,m
        y(k) = 1
     enddo
  enddo
  if (i.ne.3 .or. k.ne.1) then
     print *,"NG",i,k,y(1)
  else
     write(6,*) "OK"
  endif
end program main
