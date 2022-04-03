extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Time.death = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level1Button_pressed():
	get_tree().change_scene("res://scene/Level0.tscn")


func _on_Level2Button_pressed():
	get_tree().change_scene("res://scene/Menu.tscn")
