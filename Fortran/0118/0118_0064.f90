#define NI (8)
#define ATTRIBUTE intent(inout)

subroutine sub(A,n)
  integer,ATTRIBUTE::n
  integer,dimension(NI)::A
  n = 1
  do i=1,NI
     A(i) = i  + n
  end do
  
end subroutine sub

program main
  print *, "OK"
end program main
