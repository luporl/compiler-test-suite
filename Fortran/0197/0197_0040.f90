module m1
 interface
   module function f()
   end function
 end interface
 contains
   module function f()
     f=1
   end function
 end
use m1
 if( f()/=1) print *,101
  print *,'pass'
  end 
