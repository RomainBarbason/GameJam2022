extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called when the node enters the scene tree for the first time.
func _ready():
	var my_label_as_well = get_node("Label")
	my_label_as_well.text = "whatever I want" # replace with any String


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
