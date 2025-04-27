extends Control

@onready var sprite_2d = $StartButton
@onready var texture_button = $StartButton/TextureButton

func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level1.tscn")

func _on_texture_button_mouse_entered() -> void:
	sprite_2d.play("Touching")

func _on_texture_button_mouse_exited() -> void:
	sprite_2d.play("NOTOUCHIE")
