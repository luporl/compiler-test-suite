module mod
interface subaa
  module subroutine suba
  end subroutine
end interface
contains
  module subroutine suba
  end subroutine
end

use mod
call suba
print *,'pass'
end
