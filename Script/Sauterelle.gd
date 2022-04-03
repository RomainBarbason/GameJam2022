class_name Mob
extends KinematicBody2D


export var speed = 150.0
export var direction = Vector2.LEFT
export var gravity = 400.0
const JUMPFORCE = 140

var jump = preload("res://Img/monster/Sauterelle_jump_contour_prod.png")
var ground = preload("res://Img/monster/Sauterelle_idle_contour_prod.png")

onready var velocity = speed * direction


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_wall():
		direction.x *= -1
		velocity.x = direction.x * speed
		$Sprite.scale.x *= -1
		
	if is_on_floor():
		#velocity.y = -JUMPFORCE
		$Sprite.set_texture(ground)
	elif !is_on_floor() :
		$Sprite.set_texture(jump)


func _on_PlayerDetector_body_entered(body):
	body.die() # Replace with function body.
	
func die():
	get_tree().reload_current_scene()


func _on_Timer_timeout():
	if is_on_floor():
		velocity.y = -JUMPFORCE
