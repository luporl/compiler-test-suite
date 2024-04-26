type tt
 character(len=4),pointer,contiguous::aptr(:,:,:)
end type

integer::j=2
character(len=4),target :: trg(10,10,10)
type(tt) :: obj

trg='wxyz'

obj%aptr=>trg

if(is_contiguous(trg) .neqv. .true.) print*,101,'trg' 
if(is_contiguous(trg(:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:)' 
if(is_contiguous(trg(2:,:,:)) .neqv. .false.) print*,103,'trg(2:,:,:)' 
if(is_contiguous(trg(2,:,:)) .neqv. .false.) print*,104,'trg(2,:,:)' 
if(is_contiguous(trg(:,:,2)) .neqv. .true.) print*,105,'trg(:,:,2)' 
if(is_contiguous(trg(:,:,2:)) .neqv. .true.) print*,106,'trg(:,:,2:)' 
if(is_contiguous(trg(:,2:,:)) .neqv. .false.) print*,107,'trg(:,2:,:)' 
if(is_contiguous(trg(:,2,:)) .neqv. .false.) print*,108,'trg(:,2,:)' 
if(is_contiguous(trg(:,:,[2,3,4])) .neqv. .false.) print*,109,'trg(:,:,[2,3,4])' 
if(is_contiguous(trg(:,[2,3,4],:)) .neqv. .false.) print*,110,'trg(:,[2,3,4],:)' 

if(is_contiguous(obj%aptr) .neqv. .true.) print*,201,'obj%aptr' 
if(is_contiguous(obj%aptr(:,:,:)(:)) .neqv. .true.) print*,202,'obj%aptr(:,:,:)' 
if(is_contiguous(obj%aptr(2:,:,:)) .neqv. .false.) print*,203,'obj%aptr(2:,:,:)' 
if(is_contiguous(obj%aptr(2,:,:)) .neqv. .false.) print*,204,'obj%aptr(2,:,:)' 
if(is_contiguous(obj%aptr(:,:,2)(1:4)) .neqv. .true.) print*,205,'obj%aptr(:,:,2)' 
if(is_contiguous(obj%aptr(:,:,2:)(j-1:j*j)) .neqv. .true.) print*,206,'obj%aptr(:,:,2:)' 
if(is_contiguous(obj%aptr(:,2:,:)) .neqv. .false.) print*,207,'obj%aptr(:,2:,:)' 
if(is_contiguous(obj%aptr(:,2,:)) .neqv. .false.) print*,208,'obj%aptr(:,2,:)' 
if(is_contiguous(obj%aptr(:,:,[2,3,4])) .neqv. .false.) print*,209,'obj%aptr(:,:,[2,3,4])' 
if(is_contiguous(obj%aptr(:,[2,3,4],:)) .neqv. .false.) print*,210,'obj%aptr(:,[2,3,4],:)' 
if(is_contiguous(obj%aptr(:,j:,:)) .neqv. .false.) print*,211,'obj%aptr(:,j:,:)' 
if(is_contiguous(obj%aptr(:,:j,:)) .neqv. .false.) print*,212,'obj%aptr(:,:j,:)' 
if(is_contiguous(obj%aptr(:,::j,:)) .neqv. .false.) print*,213,'obj%aptr(:,::j,:)' 
if(is_contiguous(obj%aptr(:,:,2:)(j:j*j)) .neqv. .false.) print*,214,'obj%aptr(:,:,2:)(2:4)' 

call sub(obj%aptr)

contains
subroutine sub(dptr)
character(len=4)::dptr(:,:,:)
if(is_contiguous(dptr) .neqv. .true.) print*,301,'dptr' 
if(is_contiguous(dptr(:,:,:)) .neqv. .true.) print*,302,'dptr(:,:,:)' 
if(is_contiguous(dptr(2:,:,:)) .neqv. .false.) print*,303,'dptr(2:,:,:)' 
if(is_contiguous(dptr(2,:,:)) .neqv. .false.) print*,304,'dptr(2,:,:)' 
if(is_contiguous(dptr(:,:,2)) .neqv. .true.) print*,305,'dptr(:,:,2)' 
if(is_contiguous(dptr(:,:,2:)) .neqv. .true.) print*,306,'dptr(:,:,2:) shud b true???' 
if(is_contiguous(dptr(:,2:,:)) .neqv. .false.) print*,307,'dptr(:,2:,:)' 
if(is_contiguous(dptr(:,2,:)) .neqv. .false.) print*,308,'dptr(:,2,:)' 
if(is_contiguous(dptr(:,:,[2,3,4])) .neqv. .false.) print*,309,'dptr(:,:,[2,3,4])' 
if(is_contiguous(dptr(:,[2,3,4],:)) .neqv. .false.) print*,310,'dptr(:,[2,3,4],:)' 

print*,'pass'
end subroutine
end
