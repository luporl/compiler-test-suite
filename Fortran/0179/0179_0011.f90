use mod
call sub()
print *,'pass'
end
module mmm
contains
subroutine t()
entry t3()
end subroutine
end
module mod
use mmm
contains
subroutine sub()
call s2( t )
call s2( t3 )
end subroutine
end

subroutine s2(e)
use mod
procedure(t) :: e
call e()
end
subroutine t()
end subroutine
