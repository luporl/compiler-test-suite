type x
   integer:: x1
   integer:: x2
end type
type y
  integer::y1
  type(x)::y2
end type
type(y):: v
v=y(1,x(2,3))
write(1,*) v
rewind 1
read(1,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3])) print *,101

print *,'pass'
end
