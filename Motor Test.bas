symbol rightmotor1=D.0
symbol rightmotor2=D.1
symbol leftmotor1=D.2
symbol leftmotor2=D.3
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
main:
	gosub drive
	pause 2000
	gosub mstop
	pause 1000
	gosub backup
	pause 1000
	gosub mstop
	pause 1000
	gosub turnleft
	pause 2000
	gosub mstop
	pause 1000
	gosub turnright
	pause 2000
	gosub mstop
goto main
`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drive:
	high rightmotor2
	low rightmotor1
	high leftmotor2
	low leftmotor1
	return
backup:
	high rightmotor1
	low rightmotor2
	high leftmotor1
	low rightmotor2
	return
turnleft:
	high rightmotor2
	low rightmotor1
	high leftmotor1
	low leftmotor2
	return
turnright:
	high rightmotor1
	low rightmotor2
	high leftmotor2
	low leftmotor1
	return.
mstop:
	low rightmotor1
	low rightmotor2
	low leftmotor1
	low leftmotor2
	return
`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~