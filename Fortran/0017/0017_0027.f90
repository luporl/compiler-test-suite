module module_1st
  integer ::MPI_INTEGER=1
  integer :: MPI=2,ssss=3
  private :: ssss
end module module_1st
module module_2nd
  integer :: DP ,ssss
end module module_2nd
module module_3rd
  use module_1st
  use module_2nd
  integer :: itmp
end module module_3rd
module m1
  use module_3rd,ONLY :
end
module m2
use m1
  use module_3rd,ONLY :
  use module_1st
end

use m2
  implicit none
  if (MPI_INTEGER.ne.1) print *,'ng'
  if (MPI.ne.2) print *,'ng'
  print *,'pass'
end
