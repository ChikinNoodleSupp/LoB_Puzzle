extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")


func _ready() -> void:
	if SM.scene == 1:
		play("CloudMovement")
	else:
		$Cloud2.visible = false
