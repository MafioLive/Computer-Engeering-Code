symbol leftsen = 10
symbol rightsen = 12

main:
	readadc leftsen,b1
	debug b1
	readadc rightsen,b0
	debug b0
	pause 200
goto main