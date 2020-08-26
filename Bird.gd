extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var screen = get_viewport_rect().size 

func _integrate_forces(state):
	wrap()
	if Input.is_action_just_pressed("ui_left"):
		add_central_force(Vector2(-100, 0))
	if Input.is_action_just_released("ui_left"):
		add_central_force(Vector2(100, 0))
	if Input.is_action_just_pressed("ui_right"):
		add_central_force(Vector2(100, 0))
	if Input.is_action_just_released("ui_right"):
		add_central_force(Vector2(-100, 0))
	if Input.is_action_just_pressed("ui_up"):
		apply_central_impulse(Vector2(0, -100))
	if Input.is_action_just_pressed("ui_down"):
		apply_central_impulse(Vector2(0, 100))

func wrap():
	if screen.x < position.x or position.x < 0:
		position.x = wrapf(position.x, 0, screen.x)
	if screen.y < position.y or position.y < 0:
		position.y = wrapf(position.y, 0, screen.y)
