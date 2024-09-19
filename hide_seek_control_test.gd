extends Control

# Declare arrays
var array1 = [1, 2, 3, 4, 5, 6]
var array2 = [1, 2, 3, 4, 5, 6]

# Declare booleans
var LolloFound = false
var BernieFound = false

var EmptySpot = preload("res://empty_spot.tscn")
var HidingSpot = preload("res://hiding_spot.tscn")



func _on_test_btn_pressed() -> void:
	reset_arrays() # temp
	
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
	
	if random_num1 == 1:
		pass #initiate lollo hiding spot
	else:
		pass #initiate empty hiding spot
	
	if random_num1 == 2:
		pass
	else:
		pass
	
	if random_num1 == 3:
		pass
	else:
		pass
	
	if random_num1 == 4:
		pass
	else:
		pass
	
	if random_num1 == 5:
		pass
	else:
		pass
	
	if random_num1 == 6:
		pass
	else:
		pass
	
	if random_num2 == 1:
		pass #initiate Bernie hiding spot
	else:
		pass #initiate empty hiding spot
	
	if random_num2 == 2:
		pass
	else:
		pass
	
	if random_num2 == 3:
		pass
	else:
		pass
	
	if random_num2 == 4:
		pass
	else:
		pass
	
	if random_num2 == 5:
		pass
	else:
		pass
	
	if random_num2 == 6:
		pass
	else:
		pass
	
	
	# Check if both LolloFound and BernieFound are true
	if LolloFound and BernieFound:
		reset_arrays()
		
	
	

func spawnHidingSpot1(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos
	
	
func spawnHidingSpot2(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos
	
func spawnHidingSpot3(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos
	
func spawnHidingSpot4(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos

func spawnHidingSpot5(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos

func spawnHidingSpot6(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var instance = EmptySpot.instantiate()
	add_child(instance)
	instance.position = pos

func startSpawn():
	pass

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
	startSpawn()
	
	var HnS_1 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_1")
	var HnS_2 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_2")
	var HnS_3 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_3")
	var HnS_4 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_4")
	var HnS_5 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_5")
	var HnS_6 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_6")
	
	var HnS_1position = HnS_1.position
	var HnS_2position = HnS_2.position
	var HnS_3position = HnS_3.position
	var HnS_4position = HnS_4.position
	var HnS_5position = HnS_5.position
	var HnS_6position = HnS_6.position
	
	spawnHidingSpot1(HnS_1position)
	spawnHidingSpot2(HnS_2position)
	spawnHidingSpot3(HnS_3position)
	spawnHidingSpot4(HnS_4position)
	spawnHidingSpot5(HnS_5position)
	spawnHidingSpot6(HnS_6position)
