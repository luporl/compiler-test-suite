module mod
type ty1
 integer :: jj
 integer,pointer :: ip(:)
end type
contains
subroutine xxxx
type(ty1) :: arr(10),i(10)
arr%jj=1
do j=1,10
allocate(arr(j)%ip(10))
arr(j)%ip=1
end do
i= sub(arr)
if (i(10)%ip(10) .ne.2) print *,'err'
end subroutine
impure elemental type(ty1) function   sub(i)
intent(in) :: i
type (ty1) :: i
target :: iii
integer :: iii(10)
sub=i
iii=2
sub%ip=>iii
end function
end

use mod
call xxxx()
print *,'pass'
end
