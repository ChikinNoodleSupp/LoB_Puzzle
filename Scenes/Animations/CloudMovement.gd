extends TextureRect

var SM = preload("res://Scripts/SceneManager.gd")
var myXCordLimit = 2000



func _process(delta: float) -> void:
	if SM.scene == 4:
		position.x += .1
		if position.x >= myXCordLimit:
			position.x = -400
