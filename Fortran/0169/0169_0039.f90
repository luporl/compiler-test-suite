module m
 interface
   module subroutine sub
   end subroutine
 end interface
contains
  module subroutine sub
    print *,'pass'
  end subroutine
end


use m
call sub
end
