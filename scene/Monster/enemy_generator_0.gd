extends Position2D

var enemy = preload("res://scene/Monster/frog.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

signal create_enemy(enemy,location)

func _on_Timer_timeout():
	randomize()
	#emit_signal("create_enemy", enemy, Vector2(-200,130))
	emit_signal("create_enemy", enemy, Vector2(rand_range(-250,250),rand_range(-250,250)))
