  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        call sub(s%p, s%q)
        end
use mod
        type(TAG) s
allocate(s%p(2),s%q(2),source=1)
call tt(s)
print *,'pass'
        end
subroutine sub(a,b)
integer:: a(*),b(*)
if (any(a(:2)/=1)) print *,1
if (any(b(:2)/=1)) print *,2
end

