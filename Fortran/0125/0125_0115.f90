subroutine sub(a,b,n,m)
real(8),dimension(1:n) :: a,b
j=0
do i=1,m,50
  j = j + 1
  a(j) = a(j) + b(j)
  j = j + 3
  a(j) = a(j) + b(j)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=1040
real(8),dimension(1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n,500)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
