 complex,parameter :: cmp1(3)=[(1,2),(3,4),(5,6)]


       real::rr(3)= cmp1%re
       real::qq(3)= cmp1%im

if(rr(1) .ne. 1) print*,101,rr(1)
if(rr(2) .ne. 3) print*,102,rr(2)
if(rr(3) .ne. 5) print*,102,rr(2)
if(qq(1) .ne. 2) print*,101,qq(1)
if(qq(2) .ne. 4) print*,102,qq(2)
if(qq(3) .ne. 6) print*,102,qq(2)
                print*,"PASS"
       
       end

