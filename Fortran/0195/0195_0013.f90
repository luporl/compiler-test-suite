 subroutine s1
 integer :: a(4),b(4)
 b=3
 a=2
 associate ( p=> a(1:3))
 associate ( p2=>a+b )
   if (all(p/=2)) print *,101
   if (all(p2/=5)) print *,101
 !$omp parallel private(a)
   a=1
   if (all(p/=2)) print *,102
   if (all(a/=1)) print *,201
 !$omp end parallel
   if (all(p/=2)) print *,103
 end associate
 end associate
   if (all(a/=2)) print *,103
 end
 call s1
 print *,'pass'
 end

