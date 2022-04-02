extends Node2D


onready var camera = $Camera2D
var x = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with fundction body.

func _process(delta):
	x += 0.02
	camera.set_h_offset(x)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
