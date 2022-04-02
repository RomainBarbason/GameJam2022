extends Node2D


onready var camera = $Camera2D
onready var background = $Background
var x = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with fundction body.

func _process(delta):
	x += 0.02 #0.02
	camera.set_h_offset(x)
	var new_position = camera.get_camera_screen_center()
	new_position[0] -= 520
	new_position[1] -= 300
	# background.rect_position = new_position
	background.rect_position = new_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
