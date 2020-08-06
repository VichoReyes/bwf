extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var times_pressed = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	times_pressed += 1
	get_node("Label").text = "pressed "+ str(times_pressed) + " times"
