extends Control
@onready var sprite_2d = $TextureButton/StartButton


func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://Levels/Level1.tscn")
