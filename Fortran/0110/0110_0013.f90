call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
call sub09()
call sub10()
call sub11()
call sub12()
call sub13()
call sub14()
call sub15()
print *,'pass'
end

subroutine sub01()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
save a04
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub02()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
save aaa
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub03()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
save b01
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub04()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
save c03
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub05()
save
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub06()
save a02,b02
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub07()
save c01,c02
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub08()
save a01
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub09()
save b02
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub10()
save b03
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub11()
save c03
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub12()
save a04
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub13()
save c02
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub14()
save b03,a04
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end

subroutine sub15()
save a04
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10) :: b01,b02,b03,b04,b05
integer,dimension(10) :: c01,c02,c03,c04,c05
integer,dimension(10,1) :: aaa,bbb,ccc
a01=1;a02=2;a03=3;a04=4;a05=5
a01=100
a02=200
a03=300
a04=400
a05=500
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2a'
if (any(a03.ne.300)) print *,'err3a'
if (any(a04.ne.400)) print *,'err4a'
if (any(a05.ne.500)) print *,'err5a'
b01=1;b02=2;b03=3;b04=4;b05=5
b01=110
b02=210
b03=310
b04=410
b05=510
if (any(b01.ne.110)) print *,'err1b'
if (any(b02.ne.210)) print *,'err2b'
if (any(b03.ne.310)) print *,'err3b'
if (any(b04.ne.410)) print *,'err4b'
if (any(b05.ne.510)) print *,'err5b'
c01=1;c02=2;c03=3;c04=4;c05=5
c01=120
c02=220
c03=320
c04=420
c05=520
if (any(c01.ne.120)) print *,'err1c'
if (any(c02.ne.220)) print *,'err2c'
if (any(c03.ne.320)) print *,'err3c'
if (any(c04.ne.420)) print *,'err4c'
if (any(c05.ne.520)) print *,'err5c'
end
