integer,parameter,DIMENSION(2,2,2)::x=reshape((/1,9,45,45,4,32,12,43/),(/2,2,2/))
integer,parameter,DIMENSION(2,2,2)::y=reshape((/0,11,44,46,4,31,43,42/),(/2,2,2/))
logical,parameter::k(2,2,2) = BLE(x,y)
if(any(k .neqv. reshape([.false.,.true.,.false.,.true.,.true.,.false.,.true.,.false.],[2,2,2])))print*,"100"
print*,"PASS"
end
