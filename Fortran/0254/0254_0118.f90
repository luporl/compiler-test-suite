integer, dimension(2,3) :: a
integer :: ad1(2)
type ty
logical(kind=2),allocatable :: b(:)
end type ty
type (ty),allocatable:: obj(:)
a=RESHAPE((/9,12,9,7,13,7/),(/2,3/))
allocate(obj(2))
allocate(obj(1)%b(2))
allocate(obj(2)%b(2))
obj(2)%b=.true.
ad1= maxloc(a,2,a<10,4,back=obj(2)%b(2))
if(ad1(1).ne.2)print*,101
if(ad1(2).ne.3)print*,102
print*,"pass"
end
