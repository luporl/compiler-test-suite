module m1
interface test
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg
        end function
end interface
end module

use m1
integer,target::trg=10,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
write(UNIT=1,IOSTAT = ii, IOMSG = ctrg1)"abcdefg"
rewind(UNIT=1,IOSTAT = test(trg), IOMSG =  test(ctrg))
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
print *,"Pass"
end
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        fun=>trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
