program main
  parameter (n = 1000)
  integer*4 a(n), b(n), c(n)
  do i=1,n
     b(i) = i
     c(i) = i+1
  enddo
  call sub1(a,b,c,n)
  if (a(100) .eq. c(102)+b(100)+b(102)+c(100)+b(104)+c(104)+c(106)+b(106)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  integer*4 a(n), b(n), c(n)
  do i=1,n-6
     a(i) = c(i+2)+b(i)+b(i+2)+c(i)+b(i+4)+c(i+4)+c(i+6)+b(i+6)
  enddo
  return
end subroutine sub1
