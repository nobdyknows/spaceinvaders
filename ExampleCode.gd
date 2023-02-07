extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var name = "Player One"
	var welcome = "Hello"
	
	var message = welcome + " " + name

	print(message)
	
	var currentScore = 500
	var highScore = 200
#	if currentScore > highScore:
#		highScore = currentScore # Set new high score
#		$HUD.dialog.text = "Well done! You got a new high score"
#	elif currentScore == highScore:
#		$HUD.dialog.text = "You equalled the top score. So Close! Try again!"
#	else:
#		$HUD.dialog.text = "Not good enough. Try again!"
		
	var arr = [1,2,3]
	print(arr[1])	# Displays 2
	arr[1] = "Updating element, and changing data type."
	print(arr[1])	# Displays "Updating element, and changing data type."
	
	var dict = {"name": "User", "score": 25, "time": 12.34}
	print(dict["name"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
