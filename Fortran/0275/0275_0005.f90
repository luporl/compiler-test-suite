     integer :: v(6)
     v(1:2) = 16
     v(3:4) = 17
     v(5:6) = 18
     associate(u => v(2:6:2))
     !$omp parallel 
     !$omp sections firstprivate(v)
      v = -1
     if(u(1) .ne. 16)print*,"101"
     if(u(2) .ne. 17)print*,"102"
     if(u(3) .ne. 18)print*,"103"
    !$omp end sections
    !$omp end parallel
     print*, "pass"
   end associate
 end program


