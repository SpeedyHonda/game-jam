extends CharacterBody2D

@onready var player: CharacterBody2D = $"../Player"
@onready var enemy: CharacterBody2D = $"../Enemy"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		enemy.SPEED = enemy.SPEED * 1.5
