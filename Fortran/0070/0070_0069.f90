module m1
contains
subroutine s1(a,k1,k2)
integer,pointer,dimension(:):: a
namelist /nama/ a
do k=k1,k2
a=1
read(1,nama)
if (any(a/=[2,3])) print *,102
a=2
read(1,nama)
if (any(a/=[4,5])) print *,103
end do
end subroutine
end
subroutine s1_0
use m1
integer,pointer,dimension(:):: a
allocate(a(2))
call       s1(a,1,1)
if (any(a/=(/4,5/)))print *,'error-1'
end
integer,pointer,dimension(:):: a
call put(a,1,1)
call s1_0
print *,'pass'
contains
subroutine put(a,k1,k2)
integer,pointer,dimension(:):: a
namelist /nama/ a
allocate(a(2))
do k=k1,k2
a=[2,3]
write(1,nama) 
a=[4,5]
write(1,nama) 
end do
rewind 1
end subroutine
end

