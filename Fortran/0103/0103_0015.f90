integer*4,parameter::a=123
integer*4,parameter::g=12
integer*4,parameter::b=b'10101010'
integer*4,parameter::c=DSHIFTL(a+b,b+a,g)
if (c.ne. 1200128)print*,"100"
print*,"PASS"
end

