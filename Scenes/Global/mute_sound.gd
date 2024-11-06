extends Control

@onready var muteSoundButton = $MuteSound

func _ready() -> void:
	if AudioPlayer.mute == true:
		muteSoundButton.toggled_on = true
	elif AudioPlayer.mute == false:
		muteSoundButton.toggled_on = false
	else:
		pass

func _on_mute_sound_toggled(toggled_on: bool) -> void:
	AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	if toggled_on:
		AudioPlayer.mute = true
		
	else:
		AudioPlayer.mute = false
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
