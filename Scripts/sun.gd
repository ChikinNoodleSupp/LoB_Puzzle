extends TextureRect
var SM = preload("res://Scripts/SceneManager.gd")
var rotateSun = 1


func _process(_delta: float) -> void:
	if SM.scene == 1 or 4 or 5:
		rotateSun += .1
		rotation_degrees = rotateSun
