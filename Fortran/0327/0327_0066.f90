character,dimension(10,10)::x
integer::i,j
do i=1,10
  do j=1,10
    x(j,i)=char(j+48)
  end do
end do
call sub(x(1:10:2,1),x(1,1:5))
print *,'pass'
contains

subroutine sub(a,b)
character,dimension(:)::a,b
integer :: i
write(1,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(1,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
