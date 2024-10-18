extends AudioStreamPlayer


const bg_music = preload("res://Music/AB_Bubble_BACKING.mp3")
const menu_music = preload("res://Music/Lollo Bernie Song_SCAN_SHORT_Backing_WAV_2020.mp3")


func _play_music(music: AudioStream):
	if stream == music:
		return
	
	stream = music
	set_bus("Master")
	play()
	
func play_music_level():
	_play_music(bg_music)
	playing = true
func play_music_menu():
	_play_music(menu_music)
func stop_music_level():
	playing = false

func button_press_sfx():
	pass
	#both press and release? or just press?
func found_sfx():
	pass
	# different for lollo and bernie? or same for both?
func empty_sfx():
	# something soft and not too intrusive
	pass
