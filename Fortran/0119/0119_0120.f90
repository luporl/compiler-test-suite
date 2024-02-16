program main
  parameter (n = 1000)
  integer*8 a(n), b(n)
  do i=1,n
     b(i) = i
  enddo
  call sub1(a,b,n)
  if (a(100) .eq. b(100)+b(101)+b(104)+b(105)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  integer*8 a(n), b(n)
  do i=n-5,1,-1
     a(i) = b(i)+b(i+1)+b(i+4)+b(i+5)
  enddo
  return
end subroutine sub1
