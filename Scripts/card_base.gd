class_name Card extends Node2D

@export var CardName: String = "Name"
@export var CardDescription: String = "Description"
@export var CardCost: int = 1
@export var CardImage: Sprite2D

@onready var CostLabel: Label = $CardCost/CostLabel
@onready var NameLabel: Label = $CardName/Label
@onready var DescLabel: Label = $CardDescription

func _ready():
	set_value(CardCost, CardName, CardDescription)


func set_value(_cost: int, _name: String, _desc: String):
	CardName = _name
	CardDescription = _desc
	CardCost = _cost
	
	CostLabel.set_text(str(_cost))
	NameLabel.set_text(_name)
	DescLabel.set_text(_desc)
