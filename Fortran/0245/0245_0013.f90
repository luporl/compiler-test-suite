integer,contiguous,pointer :: ptr(:,:)
integer,target :: tgt(3,4)=2

ptr=>tgt
if(all(ptr == 2)) print*,'pass'
end
