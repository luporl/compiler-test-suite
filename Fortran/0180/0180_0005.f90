module m1
  integer,pointer:: abcd1(:,:)
  integer,pointer:: abcd2(:,:)
  integer,pointer:: abcd3(:,:)
  integer,pointer:: abcd4(:,:)
  integer,pointer:: abcd5(:,:)
  integer,pointer:: abcd6(:,:)
  integer,pointer:: abcd7(:,:)
  integer,pointer:: abcd8(:,:)
  integer,pointer:: abcd9(:,:)
end

use m1
call s(abcd1)
if (abcd1(3,5)/=1) print *,201
call s(abcd2)
if (abcd2(3,5)/=1) print *,202
call s(abcd3)
if (abcd3(3,5)/=1) print *,203
call s(abcd4)
if (abcd4(3,5)/=1) print *,204
call s(abcd5)
if (abcd5(3,5)/=1) print *,205
call s(abcd6)
if (abcd6(3,5)/=1) print *,206
call s(abcd7)
if (abcd7(3,5)/=1) print *,207
call s(abcd8)
if (abcd8(3,5)/=1) print *,208
call s(abcd9)
if (abcd9(3,5)/=1) print *,209
print *,'pass'
contains
subroutine s(x)
integer,pointer::x(:,:)
allocate( x(2:3,4:5))
x(3,5)=1
end
end
   
