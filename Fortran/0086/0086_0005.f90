real::ddd(2)
ddd=1
call s1([1.0,2.0],[3.0,4.0],[5.0,6.0],ddd)
call s2([1.0,2.0],[3.0,4.0],[5.0,6.0],ddd)
print *,"pass"
contains
subroutine s1(aaa,bbb,ccc,ddd)
real(kind=4):: aaa(:),bbb(:),ccc(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=max(aaa,bbb,ccc)
end where
if(any(size(ddd)/=[2])) print *,'err1',ddd
end subroutine s1
subroutine s2(aaa,bbb,ccc,ddd)
real(kind=4):: aaa(:),bbb(:),ccc(:),ddd(:)
integer::k
k=1
where(k<[2.0])
 ddd=min(aaa,bbb,ccc)
end where
if(any(size(ddd)/=[2])) print *,'err2'
end subroutine s2
end
