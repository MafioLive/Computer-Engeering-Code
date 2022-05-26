; Declare Variables
symbol RED_COLOR_1 = b.5
symbol GREEN_COLOR_1 = b.6
symbol BLUE_COLOR_1 = b.7
symbol trig = C.1
symbol echo = C.0
symbol range = w1
symbol rangeraw = w2
symbol beep = d.2
symbol RED_COLOR_2 = b.2
symbol GREEN_COLOR_2 = b.3
symbol BLUE_COLOR_2 = b.4
symbol rangebeepy = w3
;Begin Main Script

main:
	pulsout trig,2
	pulsin echo,1,rangeraw
	pause 20
	
	;now convert range to cm (Divide by 5.8) or inches (divide by 14.8
	;as picaxe cannot use 5.8 multiply by 10 then divide by 58 instead
	
	let range = rangeraw *10/58
	let rangebeepy = range * 2 
	debug range
	if range > 80 then
		gosub green
		gosub green2
		gosub beeps
	endif
	if range < 30 then
		gosub red
		gosub red2
		gosub beeps
	endif
	if range > 30 AND range < 80 then
		gosub blue
		gosub blue2
		gosub beeps
	endif
	pause 200
	debug range
goto main ; weeeee

;Note that X2 parts operate at 8Mhz instead of 4MHz and so modify the calculation

	red:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high RED_COLOR_1
	return
	
	green:
		low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
		high GREEN_COLOR_1
	return
	
	blue:
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
	
	beeps:
for b1 = 90 to 120 step 1
	debug
sound beep,(b1,10)
next b1
for b2 = 120 to 90 step -1
	sound beep,(b2,10)
	next b2
	return