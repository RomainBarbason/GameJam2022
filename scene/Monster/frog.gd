extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 300.0
export var direction = Vector2.LEFT
export var gravity = 500.0
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


func _on_PlayerDetector_body_entered(body):
	body.die() # Replace with function body.
	
func die():
	get_tree().reload_current_scene()
