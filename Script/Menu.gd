extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level1Button_pressed():
	get_tree().change_scene("res://scene/Level1.tscn") # Replace with function body.


func _on_Level2Button_pressed():
	pass # Replace with function body.


func _on_Level3Button_pressed():
	pass # Replace with function body.