extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 




func _on_hide_seek_pressed() -> void:
	get_tree().change_scene_to_file("res://Hide_Seek_control_test.tscn")


func _on_puzzles_pressed() -> void:
	pass # Replace with function body.


func _on_smoothie_mix_pressed() -> void:
	pass # Replace with function body.
