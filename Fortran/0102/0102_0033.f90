TYPE get_value(kind,m,n)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m,n
        logical(kind)::val = bgt(m,n)
END TYPE

TYPE(get_value(4,20,10)) :: a
if( a%val .eqv. .true.)then 
  print*,"PASS"
else
  print*,"FAIL"
end if
end

