extends CharacterBody2D

@onready var player: CharacterBody2D = $"../Player"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		player.max_health = player.max_health * 1.5
		player.cur_health = player.max_health
