call ss

contains
subroutine ss
block
interface gnr
function ff()
integer::ff
end function

function ff2(d)
integer :: d,ff2
end function
end interface

if(gnr()==2) print*,'pass'
if(gnr(2)/=5) print*,101
end block

block
interface gnr
function ff()
integer::ff
end function

function ff2(d)
integer :: d,ff2
end function
end interface

if(gnr()/=2) print*,102
if(gnr(2)/=5) print*,103
end block
end subroutine
end

function ff()
integer::ff
ff=len('ab')
end function

function ff2(d)
integer :: d,ff2
ff2=len('abc')+d
end function
