extends Control

@onready var transition = $AnimationPlayer
@onready var colorrect = $AnimationPlayer/ColorRect
var localizationScene = preload("res://Scenes/Global/Localization_Scene.tscn")
#@onready var menuButton = $MarginContainer/VBoxContainer2/HBoxContainer/MenuButton
#@onready var popup = menuButton.get_popup()

@onready var HnS = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/Label
@onready var HnS2 = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/Label2
@onready var HnS3 = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/Label3
@onready var HnS4 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/Label
@onready var HnS5 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/Label2
@onready var HnS6 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/Label3

@onready var mouseHover = false

# @onready var _checkbox = $HSlider/CheckBox

@onready var HUD = preload("res://Scenes/Global/HUD.tscn")
@onready var SM = preload("res://Scripts/SceneManager.gd")

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	AudioPlayer.play_music_menu()
	
	
	# Localization.setSwedish = true
	if Localization.setSwedish:
		Swedish()
	elif Localization.setDanish:
		Danish()
	#elif Localization.setEnglish:
		#English()
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
	var BackButton = HudButton.find_child("Back")
	BackButton.visible = false
	
	
	



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
	#print("Svenska")
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/MainMenu_Asset 10.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 22.png")
	#HnS.text = "Kurragömma1"
	#HnS2.text = "Kurragömma2"
	#HnS3.text = "Kurragömma3"
	#HnS4.text = "Kurragömma4"
	#HnS5.text = "Kurragömma5"
	#HnS6.text = "Kurragömma6"
	Localization.setSwedish = true
	#Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = false
	

#func English():
	#print("English")
	## menuButton.text = "Language"
	#HnS.text = "Hide & Seek1"
	#HnS2.text = "Hide & Seek2"
	#HnS3.text = "Hide & Seek3"
	#Localization.setSwedish = false
	#Localization.setEnglish = true
	#Localization.setDanish = false
	#Localization.setNorwegian = false
	#Localization.setFinnish = false

func Danish():
	#print("Dansk")
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 22.png")
	# menuButton.text = "Sprog"
	#HnS.text = "Gemmeleg1"
	#HnS2.text = "Gemmeleg2"
	#HnS3.text = "Gemmeleg3"
	#HnS4.text = "Gemmeleg4"
	#HnS5.text = "Gemmeleg5"
	#HnS6.text = "Gemmeleg6"
	Localization.setSwedish = false
	#Localization.setEnglish = false
	Localization.setDanish = true
	Localization.setNorwegian = false
	Localization.setFinnish = false

func Norwegian():
	#print("Norsk")
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 22.png")
	# menuButton.text = "Språk"
	#HnS.text = "Gjemsel1"
	#HnS2.text = "Gjemsel2"
	#HnS3.text = "Gjemsel3"
	#HnS4.text = "Gjemsel4"
	#HnS5.text = "Gjemsel5"
	#HnS6.text = "Gjemsel6"
	Localization.setSwedish = false
	#Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = true
	Localization.setFinnish = false

func Finnish():
	#print("Suomi")
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 22.png")
	# menuButton.text = "Kieli"
	#HnS.text = "Piiloleikki1"
	#HnS2.text = "Piiloleikki2"
	#HnS3.text = "Piiloleikki3"
	#HnS4.text = "Piiloleikki4"
	#HnS5.text = "Piiloleikki5"
	#HnS6.text = "Piiloleikki6"
	Localization.setSwedish = false
	#Localization.setEnglish = false
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = true

func _on_hide_seek_pressed() -> void:
	SM.scene = 1
	# set a bool in a scene manager script. When main scene opens, check which bool is true and turn on correct BG.
	#turn all bools to false if they're true when going back to main menu
	playAnim()

func _on_hide_seek_2_pressed() -> void:
	SM.scene = 2
	playAnim()

func _on_hide_seek_3_pressed() -> void:
	SM.scene = 3
	playAnim()

func _on_hide_seek_4_pressed() -> void:
	SM.scene = 4
	playAnim()


func _on_hide_seek_5_pressed() -> void:
	SM.scene = 5
	playAnim()


func _on_hide_seek_6_pressed() -> void:
	SM.scene = 6
	playAnim()

func playAnim():
	AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	transition.play("Fade_out")
	AudioPlayer.stop_music_level()

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Fade_out":
		#print("Fade_out played")
		
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


#func _on_en_btn_pressed() -> void:
	#English()
	#AudioPlayer.play_FX(AudioPlayer.languageSFX, 0)

func _unhandled_input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_TAB:
		# Check if no node is currently focused
		if not get_tree().root.gui_get_focus_owner():
			# Find the first TextureButton in the hierarchy
			var first_button = find_first_texture_button(self)
			if first_button:
				first_button.grab_focus()

func find_first_texture_button(node: Node) -> TextureButton:
	# Recursively find the first TextureButton
	if node is TextureButton:
		return node
	for child in node.get_children():
		var result = find_first_texture_button(child)
		if result:
			return result
	return null

#func _on_hide_seek_mouse_entered() -> void:
	#mouseHover = true # set mouse hover = true, and in another func on mouse click / input, play() sfx. If hover = true, dont play()
	#if mouseHover:
		#print("mouse hover true")
#
#
#func _on_hide_seek_mouse_exited() -> void:
	#mouseHover = false # set mouse hover = false
	#if mouseHover == false:
		##print("mouse hover false")


#func _on_mute_sound_toggled(toggled_on: bool) -> void:
	#AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)
	#if toggled_on:
		#AudioPlayer.mute = true
	#else:
		#AudioPlayer.mute = false
	#AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), toggled_on)
