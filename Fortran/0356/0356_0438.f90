module mymod
  real(4) xx,yy
end module

program main
  use mymod
  real(4) dx1(16)/1,8,2,3,7,6,5,4,8*1/
  real(4) dx2(16)/1,2,3,4,9,7,6,5,8*1/,TMP
  xx = 0
  yy = 0
  do j = 1, 16
     TMP = dx1(j)
     if (TMP > xx) xx = TMP
     TMP = dx2(j)
     if (TMP > yy) yy = TMP
  end do
  if (xx.ne.8 .or. yy.ne.9) then
     write(6,*) "NG",xx,yy
  else
     write(6,*) "ok"
  endif
end program
