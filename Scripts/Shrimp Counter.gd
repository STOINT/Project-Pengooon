extends Control
@onready var label: Label = $Label
var Text

func _on_player_swimp(Shrimp: String) -> void:
	Text = "Shrimps: " + Shrimp
	label.text=Text
	print("E")
