module m1
abstract interface 
   subroutine gen()
   end subroutine
 end interface
 end
subroutine s1
use m1
end
call s1
print *,'pass'
end
