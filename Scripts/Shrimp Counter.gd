extends Control
@onready var label: Label = $Label
var Text


func _on_penguin_swimp(Shrimp: String) -> void:
	Text = "XP: " + Shrimp
	label.text= Text
	print("E")
