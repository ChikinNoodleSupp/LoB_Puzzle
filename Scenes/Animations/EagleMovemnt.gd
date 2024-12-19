extends TextureRect

var SM = preload("res://Scripts/SceneManager.gd")
var myXCordLimit = 3000
var eagle = $".".position.y
var eagleMaxHeight = eagle + 25
var eagleMinHeight = eagle - 25
var eagleMovement = 0.3


func _process(delta: float) -> void:
	if SM.scene == 4:
		position.x += 1
		position.y += eagleMovement
		if position.x >= myXCordLimit:
			position.x = -400
		
		if position.y >= eagleMaxHeight:
			eagleMovement = -0.3
		if position.y <= eagleMinHeight:
			eagleMovement = 0.3
