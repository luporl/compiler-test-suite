module m1
  contains
   function   foo(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac)  result(ir)
    character(*),contiguous::a1(:)
    character(*)           ::a2(:)
    character(*),contiguous::a3(:)
    character(*)           ::a4(:)
    character(*),contiguous::a5(:)
    character(*)           ::a6(:)
    character(*),contiguous::a7(:)
    character(*)           ::a8(:)
    character(*),contiguous::a9(:)
    character(*)           ::aa(:)
    character(*),contiguous::ab(:)
    character(*)           ::ac(:)
    if (any(a1/=['1','3'])) print *,301
    if (any(a2/=['1','3'])) print *,302
    if (any(a3/=['1','3'])) print *,303
    if (any(a4/=['1','3'])) print *,304
    if (any(a5/=['1','3'])) print *,305
    if (any(a6/=['1','3'])) print *,306
    if (any(a7/=['1','3'])) print *,307
    if (any(a8/=['1','3'])) print *,308
    if (any(a9/=['1','3'])) print *,309
    if (any(aa/=['1','3'])) print *,310
    if (any(ab/=['1','3'])) print *,311,ab
    if (any(ac/=['1','3'])) print *,312
    if (loc(a1(1))+1/=loc(a1(2)) )print *,501
    if (loc(a3(1))+1/=loc(a3(2)) )print *,503
    if (loc(a5(1))+1/=loc(a5(2)) )print *,505
    if (loc(a7(1))+1/=loc(a7(2)) )print *,507
    if (loc(a9(1))+1/=loc(a9(2)) )print *,509
    if (loc(ab(1))+1/=loc(ab(2)) )print *,511
ir=1
   end function 
subroutine ss1(b1,b2,b3,b4,b5,b6,b7,b8,b9,ba,bb,bc)
character(*)                   :: b1(2)
character(*)                   :: b2(2)
character(*),allocatable       :: b3(:)
character(*),allocatable       :: b4(:)
character(*),contiguous:: b5(:)
character(*),contiguous:: b6(:)
character(*)           :: b7(:)
character(*)           :: b8(:)
character(*),contiguous,pointer:: b9(:)
character(*),contiguous,pointer:: ba(:)
character(*)           ,pointer:: bb(:)
character(*)           ,pointer:: bc(:)
k=2
n=2
if ( foo(b1(:)(n:k),&
         b2(:)(n:k),&
         b3(:)(n:k),&
         b4(:)(n:k),&
         b5(:)(n:k),&
         b6(:)(n:k),&
         b7(:)(n:k),&
         b8(:)(n:k),&
         b9(:)(n:k),&
         ba(:)(n:k),&
         bb(:)(n:k),&
         bc(:)(n:k) )+ &
     foo(b1(:)(n:k),&
         b2(:)(n:k),&
         b3(:)(n:k),&
         b4(:)(n:k),&
         b5(:)(n:k),&
         b6(:)(n:k),&
         b7(:)(n:k),&
         b8(:)(n:k),&
         b9(:)(n:k),&
         ba(:)(n:k),&
         bb(:)(n:k),&
         bc(:)(n:k) )/=2) print *,901
end subroutine
end
subroutine s1
use m1
character(2),target:: c(2),cc(3)=['x1','x2','x3']
character(2),allocatable::g1(:),g2(:)
character(2),pointer,contiguous    ::p1(:)
character(2),pointer    ::p2(:)
c=['x1','x3']
k=2
p1=>c
p2=>cc(::2)
allocate(g1(2),g2(2),source=['x1','x3'])
call ss1(cc(::k),cc(::k),&
         g1,g2, &
         cc(::k),cc(::k),&
         cc(::k),cc(::k),&
         p1,p1, & 
         p2,p2)
end
call s1
print *,'OK'
end 
