extends Control

@onready var transition = $AnimationPlayer

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(0.2).timeout
	transition.play("Fade_in")

func _on_hide_seek_pressed() -> void:
	transition.play("Fade_out")
	await get_tree().create_timer(0.6).timeout
	get_tree().change_scene_to_file("res://Hide_Seek_Main.tscn")
	
	# call_deferred("_on_hide_seek_pressed")

func _on_puzzles_pressed() -> void:
	pass # Replace with function body.

func _on_smoothie_mix_pressed() -> void:
	pass # Replace with function body.

#func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	#if anim_name == ("Fade_out"):
		#get_tree().change_scene_to_file("res://Hide_Seek_Main.tscn")
