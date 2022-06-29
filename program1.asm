COPY    START   0
FIRST   STL     RETADR
CLOOP   JSUB    RDREC
        LDA     LENGTH
        COMP    #0
        JEQ     ENDFIL
        JSUB    WRREC
        J       CLOOP
ENDFIL LDA     =C'EOF'
        STA     BUFFER
        LDA     #3
        STA     LENGTH
        JSUB    WRREC
        J       @RETADR
        USE     CDATA
RETADR  RESW    1
RETADR  RESW    1
        USE     CBLKS
BUFFER  RESB    4096
BUFEND  EQU     *
MAXLEN  EQU     BUFEND-BUFFER
        USE
RDREC   CLEAR   X
        CLEAR   A
        CLEAR   S
        +LDT    #MAXLEN
RLOOP   TD      INPUT
        JEQ     RLOOP
        RD      INPUT
        COMPR   A,S
        JEQ     EXIT
        STCH    BUFFER,X
        TIXR    T
        JLT     RLOOP
EXIT    STX     LENGTH
        RSUB
        USE     CDATA
INPUT   BYTE    X'F1'
        USE
WRREC   CLEAR   X
        LDT     LENGTH
WLOOP   TD      =X'05'
        JEQ     WLOOP
        LDCH    BUFFER,X
        W      =X'05'
        TIXR    T
        JLT     WLOOP
        RSUB
        USE     CDATA
        LTORG
        END     FIRST