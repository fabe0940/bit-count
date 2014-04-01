; Mason Fabel
; 29 March 14
; CS 150
; Homework 4
;
; Count the number of 1 bits in R0
; and store the result in R7
;
	.ORIG x3040
INIT	AND R1,R1,x00
	ADD R1,R1,x01
	AND R7,R7,x00
LOOP	AND R2,R0,R1
	BRz CONT
	ADD R7,R7,x01
CONT	ADD R1,R1,R1
	BRnp LOOP
END	HALT
	.END
