symbol RED_COLOR_1 = b.5
symbol GREEN_COLOR_1 = b.6
symbol BLUE_COLOR_1 = b.7
symbol RED_COLOR_2 = b.2
symbol GREEN_COLOR_2 = b.3
symbol BLUE_COLOR_2 = b.4
symbol loopAmount = 1

	main:
	gosub forLoop
	goto main
	
for(loopAmount = 1 to 20) {
	low RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
	high RED_COLOR_1
	pause 40
	LOW RED_COLOR_1,GREEN_COLOR_1,BLUE_COLOR_1
}