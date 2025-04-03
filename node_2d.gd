extends Node2D
@onready var animated_sprite_2d = $Portal

func _ready():
	animated_sprite_2d.play("PortalWoosh")
