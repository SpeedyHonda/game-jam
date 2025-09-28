extends CharacterBody2D

@onready var player: CharacterBody2D = $"../Player"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		var poison_dmg = 40
		while poison_dmg > 0:
			poison_dmg = poison_dmg - 1
			player.cur_health = player.cur_health - 1
			await get_tree().create_timer(0.25).timeout
			
