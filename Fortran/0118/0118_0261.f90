subroutine sub1(a,s,x,w)
real(8),dimension(1:3,1:3) :: a
real(8),dimension(1:3) :: s,x,w
x = matmul(a,s)+w
end subroutine

subroutine sub2(a,s,x,w)
real(8),dimension(1:3,1:3) :: a
real(8),dimension(1:3) :: s,x,w
real(8) :: tmp
do j=1,3
   tmp = 0.0
   do i=1,3
      tmp = tmp + a(j,i)*s(i)
   enddo
   x(j) = tmp+w(j)
enddo
end subroutine

subroutine sub3(a,s,x,w)
real(8),dimension(1:3,1:3) :: a
real(8),dimension(1:3) :: s,x,w
real(8) :: prg1,prg2,prg3
prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(1,2)*s(2)
prg1 = prg1 + a(1,3)*s(3)
x(1) = prg1+w(1)

prg2 = 0.0
prg2 = prg2 + a(2,1)*s(1)
prg2 = prg2 + a(2,2)*s(2)
prg2 = prg2 + a(2,3)*s(3)
x(2) = prg2+w(2)

prg3 = 0.0
prg3 = prg3 + a(3,1)*s(1)
prg3 = prg3 + a(3,2)*s(2)
prg3 = prg3 + a(3,3)*s(3)
x(3) = prg3+w(3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:3) :: x
real(8),dimension(1:3) :: ans = (/9.699999853223565E-02_8,0.1723999983653426_8,0.2478000046990813_8/)
real(8),parameter :: error = 1.0999996818603E-02_8
integer :: test_no
do i=1,3
   if (abs(x(i)-ans(i)) .ge. error) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i),abs(x(i)-ans(i)),error
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:3,1:3) :: a
real(8),dimension(1:3) :: s,x,w
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=8)*0.03_8,i=1,3)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
w = (/(real(i,kind=8)*0.07_8,i=1,3)/)
call sub1(a,s,x,w)
call check_x(x,1)
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=8)*0.03_8,i=1,3)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
w = (/(real(i,kind=8)*0.07_8,i=1,3)/)
call sub2(a,s,x,w)
call check_x(x,2)
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=8)*0.03_8,i=1,3)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
w = (/(real(i,kind=8)*0.07_8,i=1,3)/)
call sub3(a,s,x,w)
call check_x(x,3)
end program
