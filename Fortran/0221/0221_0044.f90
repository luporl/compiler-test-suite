module mod01
implicit none
intrinsic :: bit_size 
end
module mod02
use mod01
implicit none
interface bit_size
  module procedure bit_size_chr
end interface
public :: bit_size
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer             :: bits  
   end function
endmodule mod02

use mod02
use mod01

   n=      bit_size(1  )
print *,'pass'
end
