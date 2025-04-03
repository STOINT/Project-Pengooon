extends Control

@onready var label = %Counter

func _ready():
	EventController.connect("coin_collected", On_Event_coin_collected)

func On_Event_coin_collected(value: int ) -> void:
	label.text = str(value)
