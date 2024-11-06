extends Control

@onready var muteSoundButton = get_node("MuteSound") as TextureButton
var toggled

func _ready() -> void:
	await get_tree().physics_frame
	if AudioPlayer.mute == true:
		toggled = true
		muteSoundButton.set_pressed(true)
	elif AudioPlayer.mute == false:
		toggled = false
		muteSoundButton.set_pressed(false)
	else:
		pass
	

func _on_mute_sound_toggled(toggled_on: bool) -> void:
	AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	if toggled_on:
		AudioPlayer.mute = true
	else:
		AudioPlayer.mute = false
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
