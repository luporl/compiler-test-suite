module x1
contains
subroutine s(m1,m2,r,v)

complex(8)::m1(:,:),m2(:,:),r(2,3),v(2,3)
r=matmul(transpose(m1),transpose(m2))+r+v
end subroutine
end
use x1
complex(8),target,dimension(5:15,15:25,5:35,5:45)::m1,m2,r,v
complex(8),pointer::p(:,:)
m1(14,24,21:28:2,26:28:2)=reshape((/(i,i=11,18)/),(/4,2/))
m2(14,24,11:16:2,21:28:2)=reshape((/(i,i=21,32)/),(/3,4/))
 r(14,24,26:28:2,36:40:2)=reshape((/(i,i=31,36)/),(/2,3/))
 v(14,24,26:28:2,36:40:2)=reshape((/(i,i=41,46)/),(/2,3/))
call s(m1(14,24,21:28:2,26:28:2),&
       m2(14,24,11:16:2,21:28:2),&
        r(14,24,26:28:2,36:40:2),&
        v(14,24,26:28:2,36:40:2))
p=>r(14,24,26:28:2,36:40:2)
if (any(abs((/p/)-(/1362,1772,1416,1842,1470,1912/))>0.00001_8))print *,'error-1'
print *,'pass'
end
