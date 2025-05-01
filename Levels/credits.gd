extends Node2D


func _on_background_pressed() -> void:
	OS.shell_open("https://www.artstation.com/artwork/wJDq1g")

func _on_penguin_pressed() -> void:
	OS.shell_open("https://caz-creates-games.itch.io/lil-penguin-character-sprite")

func _on_tilemap_pressed() -> void:
	OS.shell_open("https://kidscancode.org/godot_recipes/3.x/2d/autotile_intro/index.html")

func _on_tilemaptemplate_pressed() -> void:
	OS.shell_open("https://www.gameart2d.com/winter-platformer-game-tileset.html")

func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/End SCreen.tscn")
