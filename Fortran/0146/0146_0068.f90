module m1
contains
 subroutine s1(a,b,c)
 real(8)       :: a(3,3)
 real(8),target:: b(3,3),c(3,3)
 a=a+matmul(a,c)
 end subroutine
end
use m1
 real(8),target:: a(3,3),b(3,3),c(3,3)
 real(8),parameter::p(3,3)=reshape([(k,k=1,9)],[3,3])
a=p
b=p
c=p
call s1(a,b,b)
if (any(abs([a]-[&
 31.,38.,45.,70.,86.,102., 109.,134.,159.])>0.0001)) print *,101,a
print *,'pass'
end

