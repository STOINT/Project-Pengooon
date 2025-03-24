extends Control
var Shrimp = 0


func _on_collectable_shrimp_4_body_entered(body: Node2D) -> void:
	Shrimp += 1
	print("XP: ", Shrimp)
