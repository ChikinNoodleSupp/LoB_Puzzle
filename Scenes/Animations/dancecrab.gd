extends AnimationPlayer

var SM = preload("res://Scripts/SceneManager.gd")



func _ready() -> void:
	if SM.scene == 2:
		play("crab")
	else:
		$Crab1.visible = false
