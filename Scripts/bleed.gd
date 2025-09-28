extends CharacterBody2D

@onready var player: CharacterBody2D = $"../Player"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		if player.cur_health > 40:
			player.cur_health = player.cur_health - 40
		else:
			player.cur_health = 1
