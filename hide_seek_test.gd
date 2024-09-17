extends Node2D

# Declare arrays
var array1 = [1, 2, 3, 4, 5, 6]
var array2 = [1, 2, 3, 4, 5, 6]

# Declare booleans
var LolloFound = false
var BernieFound = false





func _on_roll_button_pressed() -> void:
	 # Roll a random number from array1
	var random_num1 = get_random_from_array(array1)
	print("First random number: ", random_num1)
	
	# Remove the selected number from array2
	array2.erase(random_num1)
	
	# Roll a random number from the updated array2
	var random_num2 = get_random_from_array(array2)
	print("Second random number: ", random_num2)
	
	# You can now use both random_num1 and random_num2 as needed
	print("First random number from array1: ", random_num1)
	print("Second random number from array2 (after removal): ", random_num2)
	
	# Check if both LolloFound and BernieFound are true
	if LolloFound and BernieFound:
		reset_arrays()


# Helper function to get a random number from an array
func get_random_from_array(arr):
	# Get a random index within the bounds of the array
	var random_index = randi() % arr.size()
	return arr[random_index]
	
# Reset function to reinitialize the arrays
func reset_arrays():
	# Reset array1 and array2 to their original state
	array1 = [1, 2, 3, 4, 5, 6]
	array2 = [1, 2, 3, 4, 5, 6]
	# Reset booleans if needed
	LolloFound = false
	BernieFound = false
	print("Arrays reset!")

# Make sure to call randomize() in the _ready() function to seed the random number generator
func _ready():
	randomize()


func _on_texture_button_pressed() -> void:
	LolloFound = true


func _on_texture_button_2_pressed() -> void:
	BernieFound = true
