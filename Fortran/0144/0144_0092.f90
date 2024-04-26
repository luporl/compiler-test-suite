module m1
integer,parameter:: k2=3
contains
subroutine s1(b1)
character(:),pointer:: b1(:,:)
forall (n=2:2)
  b1=b1//'1'
end forall
end subroutine
subroutine s2(b2)
character(:),pointer:: b2(:,:)
character(:),pointer:: w(:,:)
allocate( character(2):: w(3,3) )
do      n=2,2
  w=b2//'1'
end do
do      n=2,2
  b2=w
end do
end subroutine
end
use m1
character(:),pointer:: b1(:,:),b2(:,:)
allocate( character(2):: b1(3,3) )
allocate( character(2):: b2(3,3) )
i=ichar('a')
do n2=1,k2
do n3=1,3
b1(n2,n3)=char(i+n3+n2)
b2(n2,n3)=char(i+n3+n2)
i=i+1
end do
end do
call s1(b1)
call s2(b2)
if (any(b1/= b2))print *,101
print *,'pass'
end
