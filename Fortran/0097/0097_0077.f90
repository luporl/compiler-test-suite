subroutine s1(k)
    integer::k
     integer,pointer::p(:)
       integer,target ::t(5)=[1,2,3,4,5]
       if (k==1) then
         p=>t(1:5)
       else
         p=>t(1::2)
       endif
       call ss(p(::fun()))
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t)/=loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t)/=loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      end subroutine
      function fun()
      integer::fun
      fun =1
      end function
      end subroutine
      call s1(1)
      print *,'pass'
      end

