extends Control

# Declare arrays
var array1 = [1, 2, 3, 4, 5, 6]
var array2 = [1, 2, 3, 4, 5, 6]

# Declare booleans
var LolloFound = false
var BernieFound = false

var EmptySpot = preload("res://empty_spot.tscn")
var HidingSpot = preload("res://LolloSpot.tscn")
var HidingSpot2 = preload("res://BernieSpot.tscn")

var instances = []

var HnS_1position
var HnS_2position
var HnS_3position
var HnS_4position
var HnS_5position
var HnS_6position



func _ready(): # on start basically
	reset_arrays()
	reset_hidingSpots()
	randomize()
	
	
	HnS_1position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_1").position
	HnS_2position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_2").position
	HnS_3position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_3").position
	HnS_4position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_4").position
	HnS_5position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_5").position
	HnS_6position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_6").position


func _on_test_btn_pressed() -> void:
	reset_arrays() # temp
	reset_hidingSpots()
	
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
	
	#var HnS_1 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_1")
	#var HnS_2 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_2")
	#var HnS_3 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_3")
	#var HnS_4 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_4")
	#var HnS_5 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_5")
	#var HnS_6 = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_6")
	
	#var HnS_1position = HnS_1.position
	#var HnS_2position = HnS_2.position
	#var HnS_3position = HnS_3.position
	#var HnS_4position = HnS_4.position
	#var HnS_5position = HnS_5.position
	#var HnS_6position = HnS_6.position
	
	var positionArray = [HnS_1position, HnS_2position, HnS_3position, HnS_4position, HnS_5position, HnS_6position]
	
	for i in range(0, array1.size()):
		if random_num1 == i+1:
			spawnLolloHidingSpot(positionArray[i])
		elif random_num2 == i+1:
			spawnBernieHidingSpot(positionArray[i])
		else:
			spawnHidingSpot1(positionArray[i])
	
	#if random_num1 == 1:
		#spawnLolloHidingSpot(HnS_1position) #initiate lollo hiding spot
	#elif random_num2 == 1:
		#spawnBernieHidingSpot(HnS_1position)
	#else:
		#spawnHidingSpot1(HnS_1position)
	#
	#if random_num1 == 2:
		#spawnLolloHidingSpot(HnS_2position)
	#elif random_num2 == 2:
		#spawnBernieHidingSpot(HnS_2position)
	#else:
		#spawnHidingSpot1(HnS_2position)
	#
	#if random_num1 == 3:
		#spawnLolloHidingSpot(HnS_3position)
	#elif random_num2 == 3:
		#spawnBernieHidingSpot(HnS_3position)
	#else:
		#spawnHidingSpot1(HnS_3position)
	#
	#if random_num1 == 4:
		#spawnLolloHidingSpot(HnS_4position)
	#elif random_num2 == 4:
		#spawnBernieHidingSpot(HnS_4position)
	#else:
		#spawnHidingSpot1(HnS_4position)
	#
	#if random_num1 == 5:
		#spawnLolloHidingSpot(HnS_5position)
	#elif random_num2 == 5:
		#spawnBernieHidingSpot(HnS_5position)
	#else:
		#spawnHidingSpot1(HnS_5position)
	#
	#if random_num1 == 6:
		#spawnLolloHidingSpot(HnS_6position)
	#elif random_num2 == 6:
		#spawnBernieHidingSpot(HnS_6position)
	#else:
		#spawnHidingSpot1(HnS_6position)
	
	
	# Check if both LolloFound and BernieFound are true
	if LolloFound and BernieFound:
		reset_arrays()
		
	

func spawnLolloHidingSpot(pos):
	var LolloButton = HidingSpot.instantiate() as TextureButton
	add_child(LolloButton)
	LolloButton.position = pos
	instances.append(LolloButton)
	LolloButton.connect("pressed", _on_lollo_spot_pressed)
	

func spawnBernieHidingSpot(pos):
	var BernieButton = HidingSpot2.instantiate() as TextureButton
	add_child(BernieButton)
	BernieButton.position = pos
	instances.append(BernieButton)
	
	BernieButton.connect("pressed", _on_bernie_spot_pressed)

func _on_lollo_spot_pressed(button):
	print("Lollo found!")
	LolloFound = true
	button.disable = true
	isLolloBernieFound()

func _on_bernie_spot_pressed(button):
	print("Bernie found!")
	BernieFound = true
	button.disabled = true
	isLolloBernieFound()
	

func spawnHidingSpot1(pos): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	var EmptyButton = EmptySpot.instantiate()
	add_child(EmptyButton)
	EmptyButton.position = pos
	instances.append(EmptyButton)
	# isLolloAndBernieSpawned = true
	

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
	
func reset_hidingSpots():
	
	for instance in instances:
		if instance and instance.is_inside_tree():
			instance.queue_free()  # Safely remove the node from the scene
	instances.clear()

func isLolloBernieFound():
	# Check if both LolloFound and BernieFound are true
	
	if LolloFound and BernieFound:
		# isLolloAndBernieSpawned = false
		_on_test_btn_pressed()
		# show victory
		#+1 point?
		# go next scene
