       integer*4 d(10),a(10),ind1(10)
       ind1 = 0
       d = 0

       do j=1,10
         a(j) = j
       enddo

       do j=1,10
         do i=1,10
           if (d(j) < a(i)) then
             d(j) = a(i)
             ind1(j) = i
           endif
         enddo
       enddo
       print*, d,ind1
       end
