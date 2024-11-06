extends Control


var pressed = false

func _on_texture_button_pressed() -> void:
	if not pressed:
		get_node("MarginContainer/BoxContainer/Label").text =" you pressed me "
		pressed = true
		$MarginContainer/BoxContainer/TextureButton.disabled = true





func _on_texture_button_mouse_entered() -> void:
	if not pressed:
		get_node("MarginContainer/BoxContainer/Label").text =" Dont you dare "


func _on_texture_button_mouse_exited() -> void:
	if not pressed:
		get_node("MarginContainer/BoxContainer/Label").text =" Hello Godot! "
