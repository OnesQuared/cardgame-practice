class_name Card extends Node2D

@export var CardName: String = "Name"
@export var CardDescription: String = "Description"
@export var CardCost: int = 1
@export var CardImage: Node2D

@onready var CostLabel: Label = $CardCost/CostLabel
@onready var NameLabel: Label = $CardName/Label
@onready var DescLabel: Label = $CardDescription

func _ready():
	CostLabel.set_text(str(CardCost))
	NameLabel.set_text(CardName)
	DescLabel.set_text(CardDescription)
