program main
  integer*1  i1x, i1y
  integer*2  i2x, i2y, calc(6),res/-4/
  integer*4  i4x, i4y
  integer*8  i8x, i8y
  real*4  r4x, r4y
  real*8  r8x, r8y

  data i1x,i2x,i4x,i8x,r4x,r8x/6*2/
  data i1y,i2y,i4y,i8y,r4y,r8y/6*-4/

  !$omp atomic seq_cst,write
  i2x   =  i1y
  !$omp end atomic
  calc(1) = i2x
  i2x = 2
  !$omp atomic seq_cst,write
  i2x   =   i2y
  !$omp end atomic
  calc(2) = i2x
  i2x = 2
  !$omp atomic seq_cst,write
  i2x   =   i4y
  !$omp end atomic
  calc(3) = i2x
  i2x = 2
  !$omp atomic seq_cst,write
  i2x   =  i8y
  !$omp end atomic
  calc(4) = i2x
  i2x = 2
  !$omp atomic seq_cst,write
  i2x   =  r4y
  !$omp end atomic
  calc(5) = i2x
  i2x = 2
  !$omp atomic seq_cst,write
  i2x   =  r8y
  !$omp end atomic
  calc(6) = i2x

  if (calc(1) .ne. res .or. calc(2) .ne. res .or. calc(3) .ne. res .or. calc(4) .ne. res .or. calc(5) .ne. res .or. calc(6) .ne. res) then
     write(6,*) "ng"
     write(6,*) calc
  endif
  write(6,*) "ok"
end program
