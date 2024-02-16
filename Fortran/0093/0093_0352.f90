integer,external :: OMP_GET_THREAD_NUM

!$omp threadprivate( cc)
  complex :: cc(5) = (3,4)
  real :: pp = 2.0
!$omp threadprivate( pp )

pp = 2.0
!$omp parallel 
        cc%im = 4
        cc%re = 3
        pp = 3.0
!$omp end parallel
if(any(cc .ne. (3,4)))print*,101,cc
if(pp/= 3.0)print*,102,pp
print*,"Pass"
end
