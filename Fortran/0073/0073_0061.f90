module m1
integer,parameter:: k1=3,k2=10,k3=5,k4=10
type x
complex(8),allocatable:: a(:,:,:,:)
complex(8),allocatable:: b(:,:,:,:)
end type
type(x)::z
integer::n1=2,n2=2
contains
pure function f(n2,n3,k2,k1,k) result(r)
integer,intent(in)::n2,n3,k2,k1,k
real(8)::r(k2,k1)
r=n2+n3
end function
subroutine s1(k1,k2,k3,k4)
forall (n2=1:k1,n3=1:k3)
  z%a(n2,:,n3,:)=+reshape([z%a(n2,:,n3,:)],[k2,k4])
  z%a(n2,:,n3,:)=+reshape([z%a(n2,:,n3,:)],[k2,k4])
end forall
end subroutine
subroutine s2(k1,k2,k3,k4)
complex(8) :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=+reshape([z%b(n2,:,n3,:)],[k2,k4])
end do
end do
do      n3=1,k3
do      n2=1,k1
  z%b(n2,:,n3,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
write(1,'(a)') repeat('0',16)
allocate( z%a(k1,k2,k3+1,k4),z%b(k1,k2,k3+1,k4))
z%a=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),&
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
z%b=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),&
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(abs(z%a-z%b)>0.000000001)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
 subroutine subcheck(x,k)
 if(k==1) then
  write(1,'(z16.16)') loc(x)
 endif 
 end subroutine
subroutine subcheck2
character(16)::r1,r
rewind 1
read (1,'(a)') r1
do 
read (1,'(a)',end=10) r
if (r/=r1) then
  print *,201
  print *,r1 
  print *,r
  return
endif
end do
10 end
