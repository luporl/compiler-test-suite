TYPE TY
    COMPLEX(2):: PP(10,10)
END TYPE

TYPE TY1
     TYPE(TY)::XX
END TYPE

TYPE(TY1)::OBJ
REAL(2) ::R(5,7)
OBJ%XX%PP=(5,6)
ASSOCIATE(ASC=>OBJ%XX%PP(3:7,2:8))
    R=ASC%IM
    IF(ANY(R .NE. 6))PRINT*,"101"
    IF(KIND(ASC) .NE. 2)PRINT*,"102"
    PRINT*,"PASS"
END ASSOCIATE
END
