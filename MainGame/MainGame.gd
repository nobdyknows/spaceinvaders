extends Control

export(int) var countdownMax
var currentTimer

func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)

	while currentTimer > -1:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		$HUD/CurrentScore.text = str(GlobalVariables.scoringinformation["currentScore"])
		currentTimer = currentTimer - 1
		print(currentTimer)
	print ("Game Over")
	GlobalVariables.bulletInstanceCount = 0
	GlobalVariables.enemyBulletInstanceCount = 0
	get_tree().change_scene("res://Menu/Menu.tscn" )

func _process(delta):
	$HUD/CurrentScore.text = str (GlobalVariables.scoringinformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		get_tree().change_scene("res://MainGame/WinScene.tscn")
