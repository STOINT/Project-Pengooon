extends Control
@onready var animated_sprite_2d = $TextureButton/StartButton

func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://Levels/Level1.tscn")


func _on_texture_button_mouse_entered():
	animated_sprite_2d.play("TOUCHIE")


func _on_texture_button_mouse_exited():
	animated_sprite_2d.play("NOTOUCHIE")
