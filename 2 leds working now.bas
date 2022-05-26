symbol RED_COLOR_1 = b.5
symbol GREEN_COLOR_1 = b.6
symbol BLUE_COLOR_1 = b.7
symbol RED_COLOR_2 = b.2
symbol GREEN_COLOR_2 = b.3
symbol BLUE_COLOR_2 = b.4
symbol beep = d.2
symbol beepDur = 50


	main:	;MAIN PROGRAM

		gosub red1
		gosub red2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub green1
		gosub green2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub blue1
		gosub blue2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub purple1
		gosub purple2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub yellow1
		gosub yellow2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub aqua1
		gosub aqua2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub white1
		gosub white2
		gosub thebeep
		gosub thedownbeep
		pause 500
		gosub off1
		gosub off2
		gosub thebeep
		gosub thedownbeep
		pause 500
	goto main
	
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

	thebeep:
if b1 = 0 THEN {
	for b0 = 50 to 130 step 1
		debug
		sound beep,(b0,1)
next b0
	endif
}
	return
	thedownbeep:
	if b0 = 130 THEN {
		for b1 = 130 to 50 step -1
			sound beep,(b1,1)
		next b0
		endif 
}
	return