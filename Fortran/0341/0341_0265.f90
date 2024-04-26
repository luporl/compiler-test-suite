subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c

do k=1,n
 do j=1,n
  do i=1,n
    a(i) = c(i,i,k) + b(i,j,k)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=20
integer,parameter :: n=10
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c
data a/10*0/, b/1000*1/, c/1000*2/

a = 1.
b = 1.
c = 1.
call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
