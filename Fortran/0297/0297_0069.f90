       real*4 a(100),b(100)
       data a/100*0/,b/100*1/
       integer flag/0/

       do i=1,25
         a(i) = b((i+1)*2)
       enddo

       do i=1,25
         if (a(i) .ne. b(i)) then
           flag = 1
         endif
       enddo

       if (flag .eq. 0) then 
         print*, "OK"
       else
         print*, "NG"
       endif
       end
