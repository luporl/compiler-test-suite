     integer :: v(2)
     v(1) = 15
     v(2) = 16
     associate(u => v(2))
     !$omp parallel 
     !$omp sections firstprivate(v)
      v = -1
     if( u .ne. 16)print*,"101",u
    !$omp end sections
    !$omp end parallel
     print*,"pass"
   end associate
 end program


