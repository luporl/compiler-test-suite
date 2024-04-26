integer,pointer::aptr(:,:,:,:)
integer,target :: trg(10,10,10,10) = 2

interface
subroutine sub(dptr)
 integer,contiguous::dptr(:,:,:,:)
end subroutine
end interface

aptr=>trg(:,:,:,2:6)

call sub(trg(:,:,:,2:6))
end

subroutine sub(dptr)
integer,contiguous::dptr(:,:,:,:)
integer::i=1,j=2

interface
subroutine sub2(dd)
 integer::dd(:,:,:,:)
end subroutine
end interface

if(is_contiguous(dptr) .neqv. .true.) print*,201,'dptr'
if(is_contiguous(dptr(:,:,:,:)) .neqv. .true.) print*,202,'dptr(:,:,:,:)'
if(is_contiguous(dptr(2:,:,:,:)) .neqv. .false.) print*,203,'dptr(2:,:,:,:)'
if(is_contiguous(dptr(2,:,:,:)) .neqv. .false.) print*,204,'dptr(2,:,:,:)'
if(is_contiguous(dptr(:,:,:,2)) .neqv. .true.) print*,205,'dptr(:,:,:,2)'
if(is_contiguous(dptr(:,:,:,2:)) .neqv. .true.) print*,206,'dptr(:,:,:,2:)'
if(is_contiguous(dptr(:,2:,:,:)) .neqv. .false.) print*,207,'dptr(:,2:,:,:)'
if(is_contiguous(dptr(:,2,:,:)) .neqv. .false.) print*,208,'dptr(:,2,:,:)'
if(is_contiguous(dptr(:,i,:,:)) .neqv. .false.) print*,209,'dptr(:,i,:,:)'
if(is_contiguous(dptr(:,:,:,:2)) .neqv. .true.) print*,210,'dptr(:,:,:,:2)'
if(is_contiguous(dptr(:,:,:,::2)) .neqv. .false.) print*,211,'dptr(:,:,:,::2)'
if(is_contiguous(dptr(:,:,:,::i)) .neqv. .true.) print*,212,'dptr(:,:,:,::i)'
if(is_contiguous(dptr(:,:,:,::j)) .neqv. .false.) print*,213,'dptr(:,:,:,::j)'
if(is_contiguous(dptr(:,:,1:10,:)) .neqv. .true.) print*,214,'dptr(:,:,1:10,:)'
if(is_contiguous(dptr(1:10,1:10,1:10,1:5)) .neqv. .true.) print*,215,'dptr(1:10,1:10,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:5,1:10,1:5)) .neqv. .false.) print*,216,'dptr(1:10,1:5,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:10:2,1:10,1:5)) .neqv. .false.) print*,217,'dptr(1:10,1:10:2,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:10,1:10,1:5:2)) .neqv. .false.) print*,218,'dptr(1:10,1:10,1:10,1:5:2)'
call sub2(dptr(:,:,1:5,:))
end subroutine

subroutine sub2(dd)
integer::dd(:,:,:,:)
integer::i=1,j=2
if(is_contiguous(dd) .neqv. .false.) print*,301,'dd'
if(is_contiguous(dd(:,:,:,:)) .neqv. .false.) print*,302,'dd(:,:,:,:)'
if(is_contiguous(dd(2:,:,:,:)) .neqv. .false.) print*,303,'dd(2:,:,:,:)'
if(is_contiguous(dd(2,:,:,:)) .neqv. .false.) print*,304,'dd(2,:,:,:)'
if(is_contiguous(dd(:,:,:,2)) .neqv. .true.) print*,305,'dd(:,:,:,2)'
if(is_contiguous(dd(:,:,:,2:)) .neqv. .false.) print*,306,'dd(:,:,:,2:)'
if(is_contiguous(dd(:,2:,:,:)) .neqv. .false.) print*,307,'dd(:,2:,:,:)'
if(is_contiguous(dd(:,2,:,:)) .neqv. .false.) print*,308,'dd(:,2,:,:)'
if(is_contiguous(dd(:,i,:,:)) .neqv. .false.) print*,309,'dd(:,i,:,:)'
if(is_contiguous(dd(:,:,:,:2)) .neqv. .false.) print*,310,'dd(:,:,:,:2)'
if(is_contiguous(dd(:,:,:,::2)) .neqv. .false.) print*,311,'dd(:,:,:,::2)'
if(is_contiguous(dd(:,:,:,::i)) .neqv. .false.) print*,312,'dd(:,:,:,::i)'
if(is_contiguous(dd(:,:,:,::j)) .neqv. .false.) print*,313,'dd(:,:,:,::j)'
if(is_contiguous(dd(:,:,1:5,:)) .neqv. .false.) print*,314,'dd(:,:,1:5,:)'
if(is_contiguous(dd(1:10,1:10,1:5,1:5)) .neqv. .false.) print*,315,'dd(1:10,1:10,1:5,1:5)'
if(is_contiguous(dd(1:10,1:5,1:5,1:5)) .neqv. .false.) print*,316,'dd(1:10,1:5,1:5,1:5)'
if(is_contiguous(dd(1:10,1:10:2,1:5,1:5)) .neqv. .false.) print*,317,'dd(1:10,1:10:2,1:5,1:5)'
if(is_contiguous(dd(1:10,1:10,1:5,1:5:2)) .neqv. .false.) print*,318,'dd(1:10,1:10,1:5,1:5:2)'

if(is_contiguous(dd(:,[1,2,3,4,5,6,7],:,:)) .neqv. .false.) print*,319,'dmy(:,[1,2,3,4,5,6,7],:,:,:)' 
if(is_contiguous(dd(:,i:j:i,i:j,1:5)) .neqv. .false.) print*,320,'dmy(:,i:j:i,i:j,1:5,:)' 
if(is_contiguous(dd(1:j,i:j,i:j,i:j)) .neqv. .false.) print*,321,'dmy(i:j,i:j,i:j,i:j,i:j)' 
if(is_contiguous(dd(i+1-1:j+1-1,1:j+j-j,:,:)) .neqv. .false.) print*,322,'dmy(:,exp,:,:,:)' 
print*,'pass'
end subroutine
