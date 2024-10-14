extends Control

@onready var transition = $AnimationPlayer
@onready var colorrect = $AnimationPlayer/ColorRect
var localizationScene = preload("res://Localization_Scene.tscn")
@onready var menuButton = $MarginContainer/VBoxContainer2/HBoxContainer/MenuButton
@onready var popup = menuButton.get_popup()
@onready var HnS = $MarginContainer/VBoxContainer/HBoxContainer/Hide_Seek

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	colorrect.visible = true
	transition.play("Fade_in")
	popup.id_pressed.connect(changeLanguage)

func changeLanguage(id):
	print(id)
	match id:
		0: Swedish()
		1: English()
		2: Danish()
		3: Norwegian()
		4: Finnish()
	# tutorial: https://www.youtube.com/watch?v=Lw-3Tnwv4Ds
	# documentation: https://www.reddit.com/r/godot/comments/177rdyo/menubutton_difficult_to_use/

func Swedish():
	print("Svenska")
	menuButton.text = "Språk"
	HnS.text = "Kurragömma"

func English():
	print("English")
	menuButton.text = "Language"
	HnS.text = "Hide & Seek"

func Danish():
	print("Dansk")
	menuButton.text = "Sprog"
	HnS.text = "Gemmeleg"

func Norwegian():
	print("Norsk")
	menuButton.text = "Språk"
	HnS.text = "Gjemsel"

func Finnish():
	print("Suomi")
	menuButton.text = "Kieli"
	HnS.text = "Piilosta"

func _on_hide_seek_pressed() -> void:
	transition.play("Fade_out")
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
		get_tree().change_scene_to_file("res://Hide_Seek_Main.tscn")
		
		
