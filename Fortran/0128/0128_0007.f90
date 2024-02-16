subroutine sub(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:24,1:n) :: b
real(8) :: x

do j=1,n
   x = 0.
   do i=1,24
      x = x + b(i,j)
   enddo
   a(j) = x
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=480
real(8),dimension(1:n) :: a
real(8),dimension(1:24,1:n) :: b

a = 1.
b = 2.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

