extends TextureButton


func _ready() -> void:
	await get_tree().create_timer(.1).timeout
	grab_focus()
