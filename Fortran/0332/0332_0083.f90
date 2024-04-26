    module mod
     type zz
       integer(4),dimension(3)::ii
     end type
    end module

    program foralls
     use mod
     type(zz)::a(3)
      call sub1(a,3)
      if (any(a(1)%ii/=(/11,12,13/))) print *,'a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/21,22,23/))) print *,'a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/31,32,33/))) print *,'a(3)%ii->',a(3)%ii
      call sub2(a,3,-1)
      if (any(a(1)%ii/=(/22,23,24/))) print *,'a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/32,33,34/))) print *,'a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/31,32,33/))) print *,'a(3)%ii->',a(3)%ii
      print *,'pass'
    end program foralls

    subroutine sub1(a,n)
     use mod
     type(zz)::a(n)
      forall(i=1:n)
        a(i)=zz((/i*10+1,i*10+2,i*10+3/))
      endforall
    end subroutine sub1

    subroutine sub2(a,n,m)
     use mod
     type(zz)::a(n)
      forall(i=n:2:m)
        a(i-1)%ii(:)=a(i)%ii(:)+1
      endforall
    end subroutine sub2
