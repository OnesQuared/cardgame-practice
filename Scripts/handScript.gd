extends Node2D

@onready var hand: PackedScene = preload("res://Scene/card_base.tscn")

@onready var cardpoint = $CanvasLayer/HandPoint

func _on_button_pressed():
	var card: Card = hand.instantiate()
	cardpoint.add_child(card)
	card.set_value(3, "First", "Description")
	card.visible = true
