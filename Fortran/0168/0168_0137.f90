integer,parameter:: a(2,1,2)=10
integer,parameter:: b(1,2)=iall(a,1)
integer,parameter:: c(*,*)=iall(a,1)
if (any(b/=10) .or. any(shape(b)/=[1,2]) ) then
print *,101,b,shape(b)
endif
if (any(c/=10) .or. any(shape(c)/=[1,2]) ) then
print *,102,c,shape(c)
endif
print *,'pass'
end
