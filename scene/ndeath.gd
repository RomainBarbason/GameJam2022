extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called when the node enters the scene tree for the first time.
func _ready():
	print(Time.death)
	if (Time.death < 10):
		text = "You died only " + str(Time.death) + " times, awesome!"# replace with any String
	else :
		text = "You died for a total of " + str(Time.death) + ", You can do better!"# replace with any String

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
