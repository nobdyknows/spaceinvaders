extends KinematicBody2D

var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)


func _physics_process(delta):
	var _collidedObject = move_and_collide(Vector2(0, -speed*delta))
