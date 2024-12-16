extends AudioStreamPlayer

# signal audio_started

const bg_music1 = preload("res://Music/ES_Ocean, Rhythmic Waves, Crashing In On Beach, Distant Birds 02 - Epidemic Sound.mp3")
const bg_music2 = preload("res://Music/ES_Complex 01 - Epidemic Sound.mp3")
const bg_music3 = preload("res://Music/ES_Singing Birds, Early Morning - Epidemic Sound.mp3")
const bg_music4 = preload("res://Music/AB_Bubble_BACKING.mp3")
const menu_music = preload("res://Music/Lollo Bernie Song_SCAN_SHORT_Backing_WAV_2020.mp3")

var mute = true

var rng = RandomNumberGenerator.new()
var pitch = 0

var fx_player

@onready var clickSFX = preload("res://SFX/SFX_Tap_1.mp3")
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
	_play_music(bg_music1)
	playing = true
func play_music_level2():
	_play_music(bg_music2)
func play_music_level3():
	_play_music(bg_music3)
func play_music_level6():
	_play_music(bg_music4, -20.0)
func play_music_menu():
	_play_music(menu_music, -20.0)
func stop_music_level():
	playing = false

func play_FX(stream: AudioStream, volume = -5.0):
	if is_instance_valid(fx_player):
		fx_player.queue_free()
	
	fx_player = AudioStreamPlayer.new()
	fx_player.stream = stream
	fx_player.name = "FX_PLAYER"
	fx_player.volume_db = volume
	fx_player.bus = "Master"
	add_child(fx_player)
	
	fx_player.play()
	
	# await fx_player.finished

func _on_audio_stream_player_finished() -> void:
	fx_player.queue_free()

#func _notification(what): #allegedly does something when gamewindow is focused / unfocused
	#match what:
		#MainLoop.NOTIFICATION_WM_FOCUS_OUT:
			#pass
		#MainLoop.NOTIFICATION_WM_FOCUS_IN:
			#pass
