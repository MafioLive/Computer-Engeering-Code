;Variables Declaration.
symbol leftsen = 10
symbol rightsen = 12
symbol rightmotor1=D.0
symbol rightmotor2=D.1
symbol leftmotor1=D.2
symbol leftmotor2=D.3
symbol RED_COLOR_1 = b.5
symbol GREEN_COLOR_1 = b.6
symbol BLUE_COLOR_1 = b.7
symbol RED_COLOR_2 = b.2
symbol GREEN_COLOR_2 = b.3
symbol BLUE_COLOR_2 = b.4
b2 = 0
pause 3500
debug
`~~~~~~~~~~~~~~~~~~~~~~~~~
;Main Program.
Main:
	readadc leftsen,b1
	readadc rightsen,b0
	if b0>150 then
		gosub turnleft
		gosub red1
		endif
	if b1>150 then
		gosub turnright
		gosub red2	
	else
		gosub drive
		gosub green1
		gosub debug1
		endif
	if b0>200 and b1>200 then
		gosub celebrate
		gosub turnleft
		pause 1000
		b2 = b2 +1
	endif
	if b2 = 4 then
		gosub yellow1
		gosub mstop
		endif
	
goto Main
`~~~~~~~~~~~~~~~~~~~~~~~~~
;Gosubs start here.

drive:
	high rightmotor2
	low rightmotor1
	high leftmotor2
	low leftmotor1
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
	return
mstop:
	low rightmotor1
	low rightmotor2
	low leftmotor1
	low leftmotor2
	return
	red1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high RED_COLOR_1
	return
	
	green1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high GREEN_COLOR_1
	return
	
	blue1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high BLUE_COLOR_1
	return
	
	red2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high RED_COLOR_2
	return
	
	green2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high GREEN_COLOR_2
	return
	
	blue2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high BLUE_COLOR_2
	return
	
	purple1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high RED_COLOR_1,BLUE_COLOR_1
	return
	
	purple2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high RED_COLOR_2,BLUE_COLOR_2
	return
	
	yellow1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high RED_COLOR_1,GREEN_COLOR_1
	return
	
	yellow2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		HIGH RED_COLOR_2,GREEN_COLOR_2
	return
	
	aqua1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high GREEN_COLOR_1,BLUE_COLOR_1
	return
	
	aqua2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high GREEN_COLOR_2,BLUE_COLOR_2
	return

	white1:
		low RED_COLOR_1,GREEN_COLOR_1,RED_COLOR_1
		high RED_COLOR_1,GREEN_COLOR_1,RED_COLOR_1
	return
	
	white2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
		high RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
	return
	
	off1:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
	return
	
	off2:
		low RED_COLOR_2,GREEN_COLOR_2,BLUE_COLOR_2
	return
	celebrate:
		gosub aqua1
		pause 200
		gosub purple2
		pause 200
		gosub white1
		pause 200
	return
	debug1:
	debug b1
	debug b0
	return
	turnLeft90:
	gosub turnLeft
	pause 500
	return
	turnRight90:
	gosub turnRight
	pause 500
	return
	turn180:
	gosub turnRight
	pause 1000
	return