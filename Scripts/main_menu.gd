extends Control

@onready var transition = $AnimationPlayer
@onready var colorrect = $AnimationPlayer/ColorRect
var localizationScene = preload("res://Scenes/Global/Localization_Scene.tscn")
#@onready var menuButton = $MarginContainer/VBoxContainer2/HBoxContainer/MenuButton
#@onready var popup = menuButton.get_popup()
@onready var HnS = $MarginContainer/VBoxContainer/HBoxContainer/Hide_Seek

@onready var mouseHover = false

# @onready var _checkbox = $HSlider/CheckBox

@onready var HUD = preload("res://Scenes/Global/HUD.tscn")

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#spawnSlider()
	#if AudioPlayer.mute == true:
		#_checkbox.button_pressed = true
	#elif AudioPlayer.mute == false:
		#_checkbox.button_pressed = false
	#else:
		#pass
	
	AudioPlayer.play_music_menu()
	
	Localization.setSwedish = true
	if Localization.setSwedish:
		Swedish()
	elif Localization.setDanish:
		Danish()
	elif Localization.setEnglish:
		English()
	elif Localization.setNorwegian:
		Norwegian()
	elif Localization.setFinnish:
		Finnish()
	colorrect.visible = true
	transition.play("Fade_in")
	# popup.id_pressed.connect(changeLanguage)
	
	spawnHUD()

func spawnHUD():
	var HudButton = HUD.instantiate()
	add_child(HudButton)
	
	



#func spawnSlider():
	#var SliderBtn = VS.instantiate() as HSlider
	#add_child(SliderBtn)
	#

#func changeLanguage(id):
	#print(id)
	#match id:
		#0: Swedish()
		#1: English()
		#2: Danish()
		#3: Norwegian()
		#4: Finnish()
	## tutorial: https://www.youtube.com/watch?v=Lw-3Tnwv4Ds
	## documentation: https://www.reddit.com/r/godot/comments/177rdyo/menubutton_difficult_to_use/

func Swedish():
	print("Svenska")
	# menuButton.text = "Språk"
	HnS.text = "Kurragömma"
	Localization.setSwedish = true
	Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = false
	

func English():
	print("English")
	# menuButton.text = "Language"
	HnS.text = "Hide & Seek"
	Localization.setSwedish = false
	Localization.setEnglish = true
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = false

func Danish():
	print("Dansk")
	# menuButton.text = "Sprog"
	HnS.text = "Gemmeleg"
	Localization.setSwedish = false
	Localization.setEnglish = false
	Localization.setDanish = true
	Localization.setNorwegian = false
	Localization.setFinnish = false

func Norwegian():
	print("Norsk")
	# menuButton.text = "Språk"
	HnS.text = "Gjemsel"
	Localization.setSwedish = false
	Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = true
	Localization.setFinnish = false

func Finnish():
	print("Suomi")
	# menuButton.text = "Kieli"
	HnS.text = "Piiloleikki"
	Localization.setSwedish = false
	Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = true

func _on_hide_seek_pressed() -> void:
	AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	transition.play("Fade_out")
	AudioPlayer.stop_music_level()
	#await get_tree().create_timer(0.6).timeout
	#get_tree().change_scene_to_file("res://Hide_Seek_Main.tscn")
	
	# call_deferred("_on_hide_seek_pressed")

func _on_puzzles_pressed() -> void:
	pass # Replace with function body.

func _on_smoothie_mix_pressed() -> void:
	pass # Replace with function body.

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Fade_out":
		print("Fade_out played")
		get_tree().change_scene_to_file("res://Scenes/Strand/Hide_Seek_Main.tscn")
		
		


func _on_se_btn_pressed() -> void:
	Swedish()
	AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)


func _on_dk_btn_pressed() -> void:
	Danish()
	AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)


func _on_no_btn_pressed() -> void:
	Norwegian()
	AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)


func _on_fi_btn_pressed() -> void:
	Finnish()
	AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)


func _on_en_btn_pressed() -> void:
	English()
	AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)



func _on_hide_seek_mouse_entered() -> void:
	mouseHover = true # set mouse hover = true, and in another func on mouse click / input, play() sfx. If hover = true, dont play()
	if mouseHover:
		print("mouse hover true")


func _on_hide_seek_mouse_exited() -> void:
	mouseHover = false # set mouse hover = false
	if mouseHover == false:
		print("mouse hover false")


#func _on_mute_sound_toggled(toggled_on: bool) -> void:
	#AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	#if toggled_on:
		#AudioPlayer.mute = true
	#else:
		#AudioPlayer.mute = false
	#AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
