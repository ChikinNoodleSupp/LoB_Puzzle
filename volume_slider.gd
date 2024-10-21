extends HSlider

var AP = preload("res://audio_player.tscn")

@export
var bus_name: String

var bus_index: int

func ready() -> void:
	bus_index = AudioServer.get_bus_index(bus_name)
	
	
	_set_initial_value()
	
	self.connect("value_changed", _value_changed)

func _set_initial_value() -> void:
	#value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))
	AP.volume = 0.5
	value = AP.volume
	

func _value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
