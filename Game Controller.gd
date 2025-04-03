extends Node

var Total_Shrimp: int = 0

func Shrimp_Collected(value: int):
	Total_Shrimp += value
	EventController.emit_signal("Shrimp_Collected", Total_Shrimp)
