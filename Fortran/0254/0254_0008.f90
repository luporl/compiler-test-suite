integer:: a(4,2)=reshape([1,6,3,6,5,6,6,5],[4,2])
    integer ::  rf(2),rt(2)
    logical:: m(4,2)=.true.
    logical::t=.true.,f=.false.
    rt= (/4,3/)
    rf= (/2,2/)
    if( any(findloc( a , 6 , 1 , m ,  4,        t).ne. rt)) print*,101
    if( any(findloc( a , 6 , 1 , m ,  4,        f).ne. rf)) print*,102
    if( any(findloc( a , 6 , 1 , m ,  4,   .not.t).ne. rf)) print*,103
    if( any(findloc( a , 6 , 1 , m ,  4,   .not.f).ne. rt)) print*,104
    if( any(findloc( a , 6 , 1 , m ,  4,  t.and.f).ne. rf)) print*,105
    if( any(findloc( a , 6 , 1 , m ,  4,   f.or.t).ne. rt)) print*,106
    if( any(findloc( a , 6 , 1 , m ,  4,  .not.( f.or.(t.and.f))).ne. rt)) print*,107
    if( any(findloc( a , 6 , 1 , m ,  4,   t.AND.t .EQV.  .NOT.f).ne. rt)) print*,108
    if( any(findloc( a , 6 , 1 , m ,  4,   t.AND.f .NEQV. .NOT.t).ne. rf)) print*,109
    print*,"pass"
end

