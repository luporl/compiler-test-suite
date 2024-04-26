module mod
integer,pointer :: r (:,:), s(:,:)
end module
use mod
allocate(r(4,2))
r = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
s(4:3,6:5) => r(1:4,2)
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
s(4:2,6:4) => r(1:4,2)
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
s(4:2,6:4) => r(:,2)
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
