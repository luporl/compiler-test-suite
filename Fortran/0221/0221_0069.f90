module mod02
implicit none
interface bit_size
  module procedure bit_size_chr
endinterface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   endfunction bit_size_chr
end
module mod01
implicit none
integer, parameter :: p = bit_size(1     )  
end

use mod02
use mod01
if (bit_size(1)/=32) print *,1010
if (bit_size('1')/=ichar('1')) print *,1010
if (p          /=32) print *,1010
print *,'pass'
end
