module m0
  integer::k=2
  integer,parameter::n=2
private
public:: ss1,n
 interface
 module subroutine ss1(i,c,ca)
  integer :: i(k+1)
  character(k+2) :: c 
  character(k+3) :: ca(k+4)
 end
 end interface
end
use m0
  integer :: i(n+1)
  character(n+2) :: c 
  character(n+3) :: ca(n+4)
call ss1(i,c,ca)
  if (any(i/=[1,2,3])) print *,701
  if (   ( c/='12ab')) print *,7021
  if (any(ca/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,7031
print *,'pass'
end
submodule(m0) smod
 contains
 module procedure  ss1
  if (size(i)/=3 ) print *,201
  if (len (c )/=4 ) print *,2011
  if (len (ca)/=5 ) print *,202
  if (size(ca)/=6 ) print *,203
  i=[1,2,3]
   c='12ab'
   ca=['34abc','56abc','34abc','56abc','34abc','56abc']
 end
 end

