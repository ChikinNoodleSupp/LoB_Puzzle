extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")

func _ready() -> void:
	if SM.scene == 1:
		play("ball")
	else:
		$Ball.visible = false
