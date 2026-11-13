extends Control

@onready var end_button: Button = $EndButton

func _ready() -> void:
	end_button.pressed.connect(_on_end_pressed)

func _on_end_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
