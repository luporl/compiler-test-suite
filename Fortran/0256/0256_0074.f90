 integer ::a(3)=[1,2,3]
 call sub1(a(1:3:2))
 if (any(a/=[11,2,13])) print *,102,a
 print *,'pass'

 contains
subroutine sub1(dmy)
 integer :: dmy(2)
 if (any(dmy/=[1,3])) print *,201,dmy
 call sub(dmy)
end subroutine

subroutine sub(b)
 integer,contiguous:: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,3])) print *,101,b
  b=b+10
  end subroutine
  end

