module m1
 interface sub
   procedure sub01,sub02,sub08,sub04
 end interface
integer::kk=1
contains
subroutine sub01(k1,k2)
integer(1):: k1(:)
 if (any(k1/=[0,2,2,0])) print *,1001,k1
 if (k2/=1) print *,1002,k2
 if (size(k1)/=4) print *,1003
end subroutine
subroutine sub02(k1,k2)
integer(2):: k1(:)
 if (any(k1/=[0,2,2,0])) print *,1011,k1
 if (k2/=2) print *,1012,k2
 if (size(k1)/=4) print *,1003
end subroutine
subroutine sub04(k1,k2)
integer(4):: k1(:)
 if (any(k1/=[0,2,2,0])) print *,1021,k1
 if (k2/=4) print *,1022,k2
 if (size(k1)/=4) print *,1003
end subroutine
subroutine sub08(k1,k2)
integer(8):: k1(:)
 if (any(k1/=[0,2,2,0])) print *,1031,k1
 if (k2/=8) print *,1032,k2
 if (size(k1)/=4) print *,1003
end subroutine
end

subroutine s1
use m1
integer,target:: a(4,2)=reshape([1,2,3,4,5,6,6,5],[4,2])
logical,pointer:: m(:,:)
logical::t=.true., f=.false.
intrinsic findloc
allocate (m(4,2))
m=a==a
call sub(findloc( a , 6 , 1+kk  , m ,kind=1), 1)
call sub(findloc( a , 6 , 1+kk  , m ,kind=2), 2)
call sub(findloc( a , 6 , 1+kk  , m ,kind=4), 4)
call sub(findloc( a , 6 , 1+kk  , m ,kind=8), 8)
call sub(findloc( a , 6 , 1+kk  , m        ), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     1), 1)
call sub(findloc( a , 6 , 1+kk  , m ,     2), 2)
call sub(findloc( a , 6 , 1+kk  , m ,     4), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     8), 8)
call sub(findloc( a , 6 , 1+kk  , m        ), 4)
call sub(findloc( a , 6 , 1+kk  , m ,kind=1,back=.not.t), 1)
call sub(findloc( a , 6 , 1+kk  , m ,kind=2,back=.not.t), 2)
call sub(findloc( a , 6 , 1+kk  , m ,kind=4,back=.not.t), 4)
call sub(findloc( a , 6 , 1+kk  , m ,kind=8,back=.not.t), 8)
call sub(findloc( a , 6 , 1+kk  , m        ,back=.not.t), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     1,back=.not.t), 1)
call sub(findloc( a , 6 , 1+kk  , m ,     2,back=.not.t), 2)
call sub(findloc( a , 6 , 1+kk  , m ,     4,back=.not.t), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     8,back=.not.t), 8)
call sub(findloc( a , 6 , 1+kk  , m        ,back=.not.t), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     1,     .not.t), 1)
call sub(findloc( a , 6 , 1+kk  , m ,     2,     .not.t), 2)
call sub(findloc( a , 6 , 1+kk  , m ,     4,     .not.t), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     8,     .not.t), 8)
call sub(findloc( a , 6 , 1+kk  , m ,     1,     f), 1)
call sub(findloc( a , 6 , 1+kk  , m ,     2,     f), 2)
call sub(findloc( a , 6 , 1+kk  , m ,     4,     f), 4)
call sub(findloc( a , 6 , 1+kk  , m ,     8,     f), 8)
end
call s1
print *,'pass'
end
