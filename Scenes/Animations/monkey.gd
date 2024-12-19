extends AnimationPlayer

var SM = preload("res://Scripts/SceneManager.gd")

func _ready() -> void:
	if SM.scene == 5:
		play("Monkey")
	else:
			$Monkey.visible = false
