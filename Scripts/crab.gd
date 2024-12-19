extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")

func _ready() -> void:
	if SM.scene == 1:
		play("Crab_Anim")
	else:
		$Crab.visible = false
