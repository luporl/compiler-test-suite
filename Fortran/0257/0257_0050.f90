integer,pointer::aptr(:,:,:)
integer,target :: trg(3,3,3)=3
integer,target :: trg2(3,3,3)=3
aptr=>trg(:,:,1:3:1)
call sub(trg2(:,:,1:3:1))
call sub2(aptr)
if(any(trg2 /= 4))print*,"101"
if(any(trg /= 4))print*,"104"
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(3,3,3)
if(loc(dptr).ne.loc(trg2))print*,"102", loc(dptr), loc(trg2)
dptr = 4
end subroutine
subroutine sub2(dptr)
integer::dptr(3,3,3)
if(loc(dptr).ne.loc(trg))print*,"103", loc(dptr), loc(trg)
dptr = 4
end subroutine
end
