extends Control

# @onready var muteSoundButton = get_node("MuteSound") as TextureButton
static var toggled_on
@onready var button = $MuteSound

# add if press m, mute sound

func _ready() -> void:
	checkButton()

func checkButton():
	if AudioPlayer.mute == true:
		button.button_pressed = true
	elif AudioPlayer.mute == false && toggled_on != false:
		button.button_pressed = false
	else:
		pass

func _on_mute_sound_toggled(toggled_on: bool) -> void:
	# AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	if toggled_on:
		AudioPlayer.mute = true
	else:
		AudioPlayer.mute = false
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
