extends TextureRect

var rotateSun = 1

func _process(delta: float) -> void:
	rotateSun += .1
	rotation_degrees = rotateSun
