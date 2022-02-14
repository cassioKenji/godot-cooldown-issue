extends KinematicBody2D

var move_speed = 100
var direction = Vector2.ZERO

var melee = load("res://melee.gd").new()

var UP_DIR    = Vector2(0, -1)
var DOWN_DIR  = Vector2(0, 1)
var LEFT_DIR  = Vector2(-1, 0)
var RIGHT_DIR = Vector2(1, 0)

func _physics_process(delta):
	melee.process(delta)

	if Input.is_action_pressed("move_up"):
		direction += UP_DIR
	if Input.is_action_pressed("move_down"):
		direction += DOWN_DIR
	if Input.is_action_pressed("move_left"):
		direction += LEFT_DIR
	if Input.is_action_pressed("move_right"):
		direction += RIGHT_DIR
		
	if Input.is_action_just_pressed("melee"):
		melee.start_capability()
		
	move_and_slide(direction * move_speed)
	direction = Vector2.ZERO
