integer,pointer :: ii(:,:)
call s(NULL(ii))
contains
subroutine s(dmy)
integer,optional :: dmy(1,1,1)
if(present(dmy)) then
print*,102
else
print*,'pass'
endif
end subroutine
end



