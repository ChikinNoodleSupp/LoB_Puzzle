extends TextureRect

var rotateSun = 1
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotateSun += .1
	rotation_degrees = rotateSun