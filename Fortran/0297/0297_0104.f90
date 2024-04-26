subroutine sub(a,x,n)
  real(8),dimension(1:n) :: a
  integer(8),dimension(1:n) :: x

  do i=1,n
     if(x(10) == 0) then
        a(i) = i
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),dimension(1:n) :: a
  integer(8),dimension(1:n) :: x
  real(8),parameter :: res=55.

  a = 0.0
  x = 0

  call sub(a,x,n)

  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
