call s1
print *,'pass'
end
subroutine s1
use iso_c_binding
type t1
integer::i1(0)
integer::i2(0)
end type
type t2
 integer::ii1(0)
type(t1)::ii2
end type
type(t1)::z1
type(t2)::z2
if(c_sizeof(z1%i1)/=sizeof(z1%i2)) print *,'err2'
if(c_sizeof(z2%ii1)/=sizeof(z2%ii1) ) print *,'err3'
end
