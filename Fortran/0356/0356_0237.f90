program main
  implicit none
  real*8 aaa(800, 800), bbb(700)
  real*8 sum
  
  aaa(:, :) = 10.0
  bbb(:) = 1.d0
  call interchg(sum, aaa, bbb, 500, 500, 1)
  write (*, *) sum
end program main

subroutine interchg(sum, aaa, bbb, imax, jmax, k)
  implicit none
  integer i, j, k, imax, jmax
  real*8 sum, aaa(imax, jmax), bbb(imax)

  sum = 0
  do i = 1, imax
     do j = 1, jmax
        sum = sum + aaa(i, j) * bbb(k)
     enddo
  enddo
  return
end subroutine interchg
   
