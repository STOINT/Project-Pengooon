extends Node2D
@onready var animated_sprite_2d = $Shimp

func _ready():
	animated_sprite_2d.play("ShrimpBob")




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
