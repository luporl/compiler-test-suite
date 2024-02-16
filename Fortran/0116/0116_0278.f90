program main

  INTERFACE OPERATOR (+)
    INTEGER(8) FUNCTION f_mercury(lo_aaa,r_bbb)
      LOGICAL*1 lo_aaa(1,2,3)
      INTENT(IN) :: lo_aaa
      REAL*4 r_bbb(2,2,2)
      INTENT(IN) :: r_bbb
    END FUNCTION f_mercury
  END INTERFACE

  real(8) :: result
  real(8),parameter :: answer=55.0
  integer(8) :: HD
  integer(8) :: hoge
  HD = 0
  hoge=0

  do i = RESHAPE((/.FALSE._1,.FALSE._1,.TRUE._1, &
          .TRUE._1,.TRUE._1,.FALSE._1/),(/1,2,3/)) &
        +RESHAPE((/ (/6.6/),(-6.0,-4.0_4,HD=1,51,9),( 3.6,0.0,HD=1,1,4),2.0,2.0 /),(/2,2,2/)) &
         ,10, 1
    hoge = hoge + i
 end do

   result = real(hoge)
   if ( result .eq. answer ) then
     print *,"ok",result
   else
     print *,"ng",result,answer
   endif
stop
end program main
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

INTEGER(8) FUNCTION f_mercury(lo_aaa,r_bbb)
  LOGICAL*1 lo_aaa(1,2,3)
  INTENT(IN) :: lo_aaa
  REAL*4 r_bbb(2,2,2)
  INTENT(IN) :: r_bbb
  f_mercury=1_8
  return
END FUNCTION f_mercury
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

