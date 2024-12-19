extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")


func _ready() -> void:
	if SM.scene == 1:
		play("Bird_Fly_2")
	else:
		$"Bird 1".visible = false
		$"Bird 2".visible = false
