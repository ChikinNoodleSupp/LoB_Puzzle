extends AudioStreamPlayer

# signal audio_started

const bg_music = preload("res://Music/AB_Bubble_BACKING.mp3")
const menu_music = preload("res://Music/Lollo Bernie Song_SCAN_SHORT_Backing_WAV_2020.mp3")

var mute = false

@onready var clickSFX = preload("res://SFX/test_btn-01.mp3")
@onready var foundSFX = preload("res://SFX/SFX_LnB_1.mp3")
@onready var languageSFX = preload("res://SFX/SFX_Blop_1.mp3")

func _play_music(music: AudioStream, volume = -8.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	set_bus("Master")
	play()
	
	# emit_signal("audio_started")
	
func play_music_level():
	_play_music(bg_music)
	playing = true
func play_music_menu():
	_play_music(menu_music)
func stop_music_level():
	playing = false

func play_FX(stream: AudioStream, volume = 0.0):
	var fx_player = AudioStreamPlayer.new()
	fx_player.stream = stream
	fx_player.name = "FX_PLAYER"
	fx_player.volume_db = volume
	set_bus("Master")
	add_child(fx_player)
	fx_player.play()
	
	await fx_player.finished
	
	fx_player.queue_free()



#func _notification(what): #allegedly does something when gamewindow is focused / unfocused
	#match what:
		#MainLoop.NOTIFICATION_WM_FOCUS_OUT:
			#pass
		#MainLoop.NOTIFICATION_WM_FOCUS_IN:
			#pass
