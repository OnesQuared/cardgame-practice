extends Node2D

@onready var cardpoint = $CanvasLayer/HandPoint
@onready var offence_card: PackedScene = preload("res://Scene/offence.tscn")
@onready var defence_card: PackedScene = preload("res://Scene/defence.tscn")
@onready var support_card: PackedScene = preload("res://Scene/support.tscn")

func _on_button_pressed():
	var offencecard = offence_card.instantiate()
	cardpoint.add_child(offencecard)


func _on_button_2_pressed() -> void:
	var defencecard = defence_card.instantiate()
	cardpoint.add_child(defencecard)


func _on_button_3_pressed() -> void:
	var supportcard = support_card.instantiate()
	cardpoint.add_child(supportcard)
