extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_WinWall_body_entered(body):
	if get_tree().current_scene.filename == "res://scene/Level0.tscn":
		get_tree().change_scene("res://scene/Level1Rom.tscn")
		
	if get_tree().current_scene.filename == "res://scene/Level1Rom.tscn":
		get_tree().change_scene("res://scene/Level2.tscn")
		
	if get_tree().current_scene.filename == "res://scene/Level2.tscn":
		get_tree().change_scene("res://scene/Victory_Screen.tscn")
