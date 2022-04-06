extends HSlider


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	value = Time.speed * 100
	min_value= 50
	max_value= 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
