extends CharacterBody2D


const SPEED = 120.0
var max_health = 100
var cur_health = max_health

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("left", "right", "up", "down")
	
	velocity = direction * SPEED

	move_and_slide()
	
	if Input.is_action_just_pressed("attack"):
		print("attack")

signal take_damage
