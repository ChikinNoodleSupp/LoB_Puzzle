extends TextureRect
var SM = preload("res://Scripts/SceneManager.gd")
var rotateSun = 1


func _process(_delta: float) -> void:
	if SM.scene1 == true:
		rotateSun += .1
		rotation_degrees = rotateSun
