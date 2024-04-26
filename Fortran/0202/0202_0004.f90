program simple
  implicit none
  integer(8),parameter:: N = 100
  integer::i=1
  integer::L=1
!$omp critical (test), hint((N))
  do i=1, N
  L=L+i
  end do
!$omp end critical (test)
  if(L==5051) then
    print *, 'pass'
  else
    print *, 'L=',L
  endif
end program
