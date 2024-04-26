module game_tool_1
contains
  integer*4 function i_ret(ival)
  i_ret=ival
  return
  end function 
end module game_tool_1
!
module game_tool_2
use game_tool_1
contains
  subroutine game

  call slot(i_ret)
  stop
  end subroutine game
!
  subroutine slot(i_retval)
!
  interface
    integer*4 function i_retval(i)
    integer*4 i
    end function i_retval
  end interface
  pat1:do i=i_retval(1),i_retval(10)
    select case (i_retval(i))
    case (:1)
      pat2:do j=i_retval(1),i_retval(10)
        select case (i_retval(j))
        case (:6)
          pat3_1:do k=i_retval(1),i_retval(10)
            select case (i_retval(k))
            case (:6);    cycle
            case (7:);    exit pat3_1
            case default; print *,'ng'
            end select
          enddo pat3_1
        case (7)
          pat3_2:do k=i_retval(1),i_retval(10)
            select case (i_retval(k))
            case (:6);    cycle
            case (7:);    exit pat3_2
            case default; print *,'ng'
            end select
          enddo pat3_2
        case default; exit pat2
        end select
      enddo pat2
      j=j-1
    case default
      if (i==7) then
        exit pat1
      else
         cycle
      endif
    end select
  enddo pat1
  print *,' i=',i,'j=',j,'k=',k
  print *,'=== test end ==='
  return
  end subroutine 
end module game_tool_2
!
program main
use game_tool_2
call game
stop
end program main
