extends Area2D
@onready var animated_sprite_2d = $poootal

func _ready():
	animated_sprite_2d.play("Portal")
