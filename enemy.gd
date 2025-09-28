extends CharacterBody2D

const SPEED = 80
@onready var player: CharacterBody2D = $"../Player"
@onready var damage_area: Area2D = $Area2D


func _physics_process(delta: float) -> void:
	var dir = (player.position - position).normalized()
	
	velocity = dir * SPEED
	
	move_and_slide()
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		print("DIE")
