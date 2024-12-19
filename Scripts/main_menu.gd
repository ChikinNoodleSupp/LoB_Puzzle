extends Control

@onready var transition = $AnimationPlayer
@onready var colorrect = $AnimationPlayer/ColorRect
var localizationScene = preload("res://Scenes/Global/Localization_Scene.tscn")

@onready var HnS = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/Label
@onready var HnS2 = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/Label2
@onready var HnS3 = $MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/Label3
@onready var HnS4 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/Label
@onready var HnS5 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/Label2
@onready var HnS6 = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/Label3

@onready var mouseHover = false

@onready var HUD = preload("res://Scenes/Global/HUD.tscn")
@onready var SM = preload("res://Scripts/SceneManager.gd")

func _ready() -> void:
	
	AudioPlayer.play_music_menu()
	
	if Localization.setSwedish:
		Swedish()
	elif Localization.setDanish:
		Danish()
	elif Localization.setNorwegian:
		Norwegian()
	elif Localization.setFinnish:
		Finnish()
	colorrect.visible = true
	transition.play("Fade_in")
	
	spawnHUD()

func spawnHUD():
	var HudButton = HUD.instantiate()
	add_child(HudButton)
	var BackButton = HudButton.find_child("Back")
	BackButton.visible = false

func Swedish():
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/MainMenu_Asset 10.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/SV_Asset 22.png")

	Localization.setSwedish = true
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = false

func Danish():
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/DK_Asset 22.png")

	Localization.setSwedish = false
	Localization.setDanish = true
	Localization.setNorwegian = false
	Localization.setFinnish = false

func Norwegian():
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/NO_Asset 22.png")

	Localization.setSwedish = false
	Localization.setDanish = false
	Localization.setNorwegian = true
	Localization.setFinnish = false

func Finnish():
	$Title.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Title_Asset 28.png")
	
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/StrandTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 23.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/VattenTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 27.png")
	$MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer3/HemmaTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 26.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer/BergTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 25.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/DjungelTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 24.png")
	$MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer3/GymTitle.texture = ResourceLoader.load("res://Assets/MainMenu/Menu/FI_Asset 22.png")

	Localization.setSwedish = false
	Localization.setDanish = false
	Localization.setNorwegian = false
	Localization.setFinnish = true

func _on_hide_seek_pressed() -> void:
	SM.scene = 1
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
		get_tree().change_scene_to_file("res://Scenes/Hide_Seek_Main.tscn")

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
