subroutine s1
type :: str
character(5),pointer :: ppp(:)
character(:),pointer :: ttt(:)
end type
character(5),pointer :: ppo(:)
character(5),pointer :: ppp(:)
character(5),pointer :: ppr(:)
type(str) :: sss
allocate(ppo(3))
ppo='12345'
allocate(ppr(3))
ppr='12345'
allocate(character(10)::sss%ttt(3))
sss%ttt =         (/"1234567890","2345678901", &
                    "8901234567"/)
ppp => sss%ttt
sss%ppp => sss%ttt
if (any(ppo/='12345'))print *,101
if (any(ppr/='12345'))print *,102
if (any(sss%ttt /=         (/"1234567890","2345678901", &
                    "8901234567"/)          &
                                      ))print *,103
if (any(sss%ppp /= reshape((/"12345","23456", &
                    "89012"/),(/3/))))print *,104
if (any(ppp /= reshape((/"12345","23456", &
                    "89012"/),(/3/))))print *,105
end
call s1
print *,'pass'
end
