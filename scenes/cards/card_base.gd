extends Control

@onready var CardDB = preload("res://resources/card_db.gd")
@onready var card_id = CardDB.CardID.OneCoin

var card_name: String
var card_type
var card_cost

func _ready() -> void:
	load_card_data(card_id)
	load_card_illustration()

func load_card_data(id: int) -> void:
	if id in CardDB.DATA:
		var card_info: Array = CardDB.DATA[id]
		$VBoxContainer/Value.text = str(card_info[1])
		$VBoxContainer/Description.text = card_info[2]
		
		card_name = CardDB.CardID.keys()[id]
		card_cost = card_info[0]
		card_type = card_info[4]

func load_card_illustration() -> void:
	var texture_path: String = "res://assets/card_illustrations/%s.png" % card_name
		
	if ResourceLoader.exists(texture_path):
		$VBoxContainer/Illustration.texture = load(texture_path)
	else:
		push_warning("Missing card illustration at: " + texture_path)
