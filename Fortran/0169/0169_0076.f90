module m
 interface
  module subroutine sub
  end subroutine
 end interface
contains
 subroutine msub
  print *,'pass'
 end subroutine
end

submodule(m)smod
contains
 module subroutine sub
  call ssub
 end subroutine
 subroutine ssub
  call hoge
 contains
  subroutine hoge
   call msub
  end subroutine
 end subroutine
end

use m
call sub
end
