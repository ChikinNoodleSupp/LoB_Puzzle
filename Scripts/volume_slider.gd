extends HSlider

@export var bus_name: String = "Master"  # Allow the bus name to be set in the Inspector
var bus_index: int  # Store the bus index

func _ready() -> void:
	# Get the bus index from the provided bus name
	bus_index = AudioServer.get_bus_index(bus_name)
	#print("Bus Index: ", bus_index, " for bus name: ", bus_name)
	# Connect the value_changed signal to update the volume
	value_changed.connect(_value_changed)
	
	# Set the slider value based on the current volume of the bus
	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))


#func _set_initial_value() -> void:
	## Get the current volume of the bus in decibels
	#var bus_volume_db = AudioServer.get_bus_volume_db(bus_index)
	#
	## Convert the dB volume to a linear value for the slider (0 to 1)
	#value = db_to_linear(bus_volume_db)
#
	## Debugging print to check the current volume in dB and the slider value
	#print("Bus volume in dB: ", bus_volume_db)
	#print("Slider value set to: ", value)

# Function to handle the slider value being changed by the user
func _value_changed(value: float) -> void:
	# Convert the slider's linear value back to decibels
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
