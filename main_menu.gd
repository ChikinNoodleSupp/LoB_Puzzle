extends Control

@onready var transition = $AnimationPlayer
@onready var colorrect = $AnimationPlayer/ColorRect
@onready var button = $MarginContainer/VBoxContainer2/HBoxContainer/MenuButton


#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	colorrect.visible = true
	transition.play("Fade_in")
	button.get_popup().id_pressed.connect(_on_menu_button_pressed)

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
		
		
func _on_menu_button_pressed(id : int):
	match id:
		0: String("Swedish")
		1: String("English")
		2: String("Danish")
		3: String("Norwegian")
		4: String("Finnish")
	# tutorial: https://www.youtube.com/watch?v=Lw-3Tnwv4Ds
	# documentation: https://www.reddit.com/r/godot/comments/177rdyo/menubutton_difficult_to_use/
