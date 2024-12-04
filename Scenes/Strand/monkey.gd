extends AnimationPlayer

var SM = preload("res://Scripts/SceneManager.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SM.scene == 5:
		play("Monkey")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
