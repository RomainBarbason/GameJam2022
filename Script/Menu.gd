extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Time.hard = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level1Button_pressed():
	get_tree().change_scene("res://scene/Level0.tscn") # Replace with function body.


func _on_Level2Button_pressed():
	get_tree().change_scene("res://scene/Level1Rom.tscn")


func _on_Level3Button_pressed():
	get_tree().change_scene("res://scene/Level2.tscn")



func _on_CheckButton_toggled(button_pressed):
	if button_pressed==true:
		Time.hard = true
	else:
		Time.hard = false


func _on_HSlider_value_changed(value):
	Time.speed = (value)/100
	$VBoxContainer/GameSpeed.text = "Scroll Speed:" + str(Time.speed)
	

