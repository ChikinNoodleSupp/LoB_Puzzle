extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SM.scene == 1:
		play("ball")
