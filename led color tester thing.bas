main:
	low b.7,b.6,b.5
	HIGH b.5 ' Red
	pause 200
	
	low b.7,b.6,b.5
	high b.6 ' Green
	pause 200
	
	low b.7,b.6,b.5
	high b.7 ; Blue
	pause 200
	
	low b.7,b.6,b.5
	high b.6,b.5 ; Yellow
	pause 200
	
	low b.7,b.6,b.5
	high b.7,b.5 ; Purple
	pause 200
	
	low b.7,b.6,b.5
	high b.6,b.5,b.7 ; White
	pause 200
	
	low b.7,b.6,b.5
	high b.7,b.6 ; Aqua
	pause 200
	
	low b.7,b.6,b.5
	pause 200 ; OFF
goto main