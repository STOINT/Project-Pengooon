extends Node2D

@export var value: int = 1

func _on_node_2d_body_entered(body: Node2D) -> void:
	if body is Penguin:
		GameController.coin_collected(value)
		self.queue_free()
