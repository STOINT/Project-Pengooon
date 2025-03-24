extends Area2D

@onready var animated_sprite_2d = $Bounce

func _ready() -> void:
	if animated_sprite_2d:
		animated_sprite_2d.play("Pad")
	else:
		print("Error: 'Bounce' node not found or not an AnimatedSprite2D")
