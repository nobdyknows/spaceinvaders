extends Control

export(int) var countdownMax
var currentTimer



func _ready():
	
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	pass 


