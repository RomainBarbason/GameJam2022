extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Time.death += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("restart"):
		get_tree().change_scene(Time.prevscene)


func _on_Level1Button_pressed():
	get_tree().change_scene(Time.prevscene)


func _on_Level2Button_pressed():
	get_tree().change_scene("res://scene/Menu.tscn")
