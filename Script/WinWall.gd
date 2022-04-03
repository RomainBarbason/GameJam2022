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
		
	elif get_tree().get_current_scene().get_name() == "Level1Rom":
		get_tree().change_scene("res://scene/Level2.tscn")
		
	else:
		get_tree().change_scene("res://scene/Victory_Screen.tscn")
