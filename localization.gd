extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_menu_button_pressed(id : int):
	match id:
		0: pass
		1: pass
	# if eng, localize to eng
	# etc. etc.
	# tutorial: https://www.youtube.com/watch?v=Lw-3Tnwv4Ds
	# documentation: https://www.reddit.com/r/godot/comments/177rdyo/menubutton_difficult_to_use/
