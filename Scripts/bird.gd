extends AnimationPlayer
var SM = preload("res://Scripts/SceneManager.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SM.scene1 == true:
		play("Bird_Fly_2")
