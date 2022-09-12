ORG 0000h
AJMP MAIN; ajmp absolute jump ;ISR fir int1
ORG 0013H
CLR P0.0;turn on led
HERE:  JNB P3.3,HERE ;checking the status of switch
SETB P0.0;turn off led
RETI;
ORG 30h
MAIN: SETB P3.3;p3.3 as input pin
CLR P0.0;p0.0 output
SETB P0.1
SETB TCON.2;TCON means timer control
MOV IE, #10000100B;INT 1 Enable
WAIT: SJMP WAIT
END

