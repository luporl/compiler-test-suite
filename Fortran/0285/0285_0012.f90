integer::i=4

associate(aa=>i)
 OPEN(10,FILE='ABC.DATA',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)
end associate

WRITE(10,REC=1) 2

associate(aa=>10)
INQUIRE(aa,NEXTREC=i)
CLOSE(aa,status='delete')
end associate

if(i==2) print*,'pass'
END
