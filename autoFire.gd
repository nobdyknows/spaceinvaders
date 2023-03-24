extends CheckButton

func _ready():
	pass # Replace with function body.



func _on_autoFire_pressed():
	GlobalVariables.autoFire = pressed
	print (pressed)
