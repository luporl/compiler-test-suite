program main
  parameter (n = 1000)
  real*4 a(n), b(n), c(n)
  do i=1,n
     b(i) = i * 0.1234
     c(i) = i * 0.2345
  enddo
  call sub1(a,b,c,n)
  if (abs(a(100) - (b(100)+b(102)+c(100)+b(104))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  real*4 a(n), b(n), c(n)
  do i=1,n-4
     a(i) = b(i)+b(i+2)+c(i)+b(i+4)
  enddo
  return
end subroutine sub1
