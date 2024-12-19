extends AnimationPlayer

var SM = preload("res://Scripts/SceneManager.gd")

func _ready() -> void:
	if SM.scene == 2:
		play("starfish")
	else:
		$Starfish1.visible = false
