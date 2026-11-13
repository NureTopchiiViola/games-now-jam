extends Control

@onready var play_button: Button = $VBoxContainer/PlayButton
@onready var volume_slider: HSlider = $VBoxContainer/VolumeSlider

func _ready() -> void:
	play_button.pressed.connect(_on_play_pressed)
	volume_slider.value_changed.connect(_on_volume_changed)
	_on_volume_changed(volume_slider.value)

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Game.tscn")

func _on_volume_changed(value: float) -> void:
	var bus_idx := AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus_idx, linear_to_db(value))
