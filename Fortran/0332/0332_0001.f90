    program foralls
     interface
      subroutine sub(a,b,n)
       integer(8),allocatable::a(:)
       integer(4),allocatable::b(:)
      end subroutine 
    end interface
      integer(8),allocatable::a(:)
      integer(4),allocatable::b(:)
      allocate(a(10),b(10))
      a=(/1,2,3,4,5,1,2,3,4,5/)
      b=0
      call sub(a,b,10)
      if (any(a/=(/1,2,3,40,50,1,2,3,40,50/))) print *,'a->',a
      if (any(b/=(/0,0,0,10,10,0,0,0,10,10/))) print *,'b->',b
      deallocate(a,b)
      print *,'pass'
    end program

    subroutine sub(a,b,n)
      integer(8),allocatable::a(:)
      integer(4),allocatable::b(:)
      forall (i=1:n,i>2.and.a(i)>3)
        a(i)=a(i)*10
        b(i)=b(i)+10
      endforall
    end subroutine
