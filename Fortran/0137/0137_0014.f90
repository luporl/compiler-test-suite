module m1
integer(8):: save
integer,target::t(3,2)=reshape([1,2,3,4,5,6],[3,2])
integer,target::tt(3,2)=reshape([1,2,3,4,5,6],[3,2])
contains
subroutine s1(n)
integer,pointer::p(:,:)
if (n==0) p=>null()
if (n==1) p=>t(:,:)
if (n==2) p=>t(1:3:2,:)
call z(p)
end subroutine
subroutine z(p)
integer,optional::p(:,:)
save= loc(p)
write(1,'(z16.16)') loc(p)
do k=1,5
t=tt
call ss(p)
end do
write(1,*)
write(1,'(z16.16)') loc(p)
do k=1,5
t=tt
kk= fun(p) 
if (kk/=0) print *,101
end do
end subroutine
subroutine ss(x) 
integer,optional:: x(4)
end subroutine
function fun(x) result(k)
integer,optional:: x(4)
k=0
end function
end

use m1
call s1(0)
print *,'pass'
end
