extends Node2D

@onready var transition = $Transition
var HideSeek = preload("res://Hide_Seek_control_test.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 




func _on_hide_seek_pressed() -> void:
	transition.play("Fade_out")
	


func _on_puzzles_pressed() -> void:
	pass # Replace with function body.


func _on_smoothie_mix_pressed() -> void:
	pass # Replace with function body.


func _on_transition_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file(HideSeek)
