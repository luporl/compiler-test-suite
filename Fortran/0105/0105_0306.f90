module x1
contains
subroutine s(m1,m2,r,v)
complex(8)::m1(2,4),m2(4,3),r(2,3),v(2,6)
k=2
r=matmul(m1,m2)+r+v(:,2:6:k)
end subroutine
end
use x1
complex(8),target,dimension(5:15,15:25,5:35,5:45)::m1,m2,r,v
complex(8),pointer::p(:,:)
m1(14,24,26:28:2,21:28:2)=reshape((/(i,i=11,18)/),(/2,4/))
m2(14,24,21:28:2,11:16:2)=reshape((/(i,i=21,32)/),(/4,3/))
 r(14,24,26:28:2,36:40:2)=reshape((/(i,i=31,36)/),(/2,3/))
 v(14,24,26:28:2,36:41:1)=reshape((/(i,i=41,52)/),(/2,6/))
call s(m1(14,24,26:28:2,21:28:2),&
       m2(14,24,21:28:2,11:16:2),&
        r(14,24,26:28:2,36:40:2),&
        v(14,24,26:28:2,36:41:1))
p=>r(14,24,26:28:2,36:40:2)
if (any(abs((/p/)-(/1344,1436,1574,1682,1804,1928/))>0.00001_8))print *,'error-1'
print *,'pass'
end
