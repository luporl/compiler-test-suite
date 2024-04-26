module m1
contains
subroutine s1(k1,k2,a,b,c)
integer,allocatable:: a(:,:),b(:,:),c(:,:)

forall (i1=1:k1)
forall (j1=1:k2)
  a(i1,j1+1)=a(i1,j1+1)+1
  a(i1,j1+1)=a(i1,j1+1)+1
  a(i1,j1+1)=a(i1,2   )+1
  a(i1,j1+1)=a(i1,j1+1)+1
end forall
end forall

do      i1=1,k1
do      j1=1,k2
  c(i1,j1+1)=b(i1,j1+1)+1
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  b(i1,j1+1)=c(i1,j1+1)
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  c(i1,j1+1)=b(i1,j1+1)+1
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  b(i1,j1+1)=c(i1,j1+1)
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  c(i1,j1+1)=b(i1,2   )+1
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  b(i1,j1+1)=c(i1,j1+1)
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  c(i1,j1+1)=b(i1,j1+1)+1
end do     
end do     
do      i1=1,k1
do      j1=1,k2
  b(i1,j1+1)=c(i1,j1+1)
end do     
end do     
end subroutine
end

use m1
integer,allocatable:: a(:,:),b(:,:),c(:,:)
integer,parameter:: k1=5,k2=3
allocate( a(k1,k2+1),b(k1,k2+1),c(k1,k2+1))
a=reshape([(n,n=1,20)],[5,4])
b=reshape([(n,n=1,20)],[5,4])
call s1(k1,k2,a,b,c)
if (any(a/=b)) print *,101
print *,'pass'
end
