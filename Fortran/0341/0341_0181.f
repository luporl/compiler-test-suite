      integer a(10)
      a=10
      call sub(a)
      call sub(a)
      if(a(5).eq.9) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
      subroutine sub(a)
      integer a(10)
      do 10 j=1,10
         do 20 i=1,10
            a(i) = 9
 20      continue
 10   continue
      end
