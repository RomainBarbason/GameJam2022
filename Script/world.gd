extends Node2D


onready var camera = $Camera2D
onready var background = $Background
onready var player = $Player
var x = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with fundction body.

func _process(delta):
	x += 0.02 #0.02
	camera.set_h_offset(x)
	var view = get_viewport_rect().size / 2
	var camera_pos = camera.get_camera_screen_center()
	var new_position = camera.get_camera_screen_center()
	new_position[0] = camera_pos.x - view.x
	new_position[1] = camera_pos.y - view.y
	# background.rect_position = new_position
	background.rect_position = new_position
	
	if player.get_position().x < (camera_pos.x - view.x)-30:
		get_tree().reload_current_scene()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EnemyGenerator_create_enemy(enemy, location):
	var enemy_instance = enemy.instance()
	add_child(enemy_instance)
	var camera_pos = camera.get_camera_screen_center()
	var view = get_viewport_rect().size / 2
	enemy_instance.global_position = Vector2(rand_range(camera_pos.x - view.x, camera_pos.x + view.x),camera_pos.y - view.y)
	
	
