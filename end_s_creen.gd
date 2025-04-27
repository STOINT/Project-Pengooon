extends Control


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/credits.tscn")

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level1.tscn")
