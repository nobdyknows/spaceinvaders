extends KinematicBody2D
#
var movement_speed = 200
export (int) var health = 3
var bulletSource = preload ("res://Bullet/Bullet.tscn")

func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	if GlobalVariables.autoFire:
		if Input.is_action__pressed ("fire"):
			if GlobalVariables.bulletInstanceCount < 10:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2 (position.x, position.y-20)
				get_tree().get_root().add_child(bulletInstance)
				yield(get_tree().create_timer(0.7), "timeout")
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 1:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(movement_speed * delta, 0))
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed * delta))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed * delta))

func reduceHealth():
	health -=1
	if health == 0:
		get_tree().change_scene("res://Menu/GameOver.tscn")
