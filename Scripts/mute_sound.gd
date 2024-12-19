extends Control

static var toggled_on
@onready var button = $MuteSound

func _ready() -> void:
	checkButton()

func checkButton():
	if AudioPlayer.mute == true:
		button.button_pressed = true
	elif AudioPlayer.mute == false && toggled_on != false:
		button.button_pressed = false
	else:
		pass

func _input(event):
	if event.is_action_pressed("Mute"):
		if AudioPlayer.mute == true:
			AudioPlayer.mute = false
		elif AudioPlayer.mute == false:
			AudioPlayer.mute = true
		checkButton()

func _on_mute_sound_toggled(toggled_on: bool) -> void:
	if toggled_on:
		AudioPlayer.mute = true
	else:
		AudioPlayer.mute = false
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
