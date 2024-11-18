extends Control

# Declare arrays
var array1 = [1, 2, 3, 4, 5, 6]
var array2 = [1, 2, 3, 4, 5, 6]

var sceneArray = ["res://Scenes/Strand/Hide_Seek_control_test.tscn"]#, "res://Hide_Seek_control_test_2.tscn", "res://Hide_Seek_control_test_3.tscn"] # just add more scenes

static var sceneNumber = 0

# Declare booleans
var LolloFound = false
var BernieFound = false

var EmptySpot = preload("res://Scenes/Strand/Empty/empty_spot.tscn")
var EmptySpot2 = preload("res://Scenes/Strand/Empty/empty_spot2.tscn")
var EmptySpot3 = preload("res://Scenes/Strand/Empty/empty_spot3.tscn")
var EmptySpot4 = preload("res://Scenes/Strand/Empty/empty_spot4.tscn")
var EmptySpot5 = preload("res://Scenes/Strand/Empty/empty_spot5.tscn")
var EmptySpot6 = preload("res://Scenes/Strand/Empty/empty_spot6.tscn")
var hidingSpotArray = [EmptySpot, EmptySpot2, EmptySpot3, EmptySpot4, EmptySpot5, EmptySpot6]

var LolloHiding = preload("res://Scenes/Strand/Lollo/LolloSpot.tscn") # make x6, put in array
var LolloHiding2 = preload("res://Scenes/Strand/Lollo/LolloSpot2.tscn")
var LolloHiding3 = preload("res://Scenes/Strand/Lollo/LolloSpot3.tscn")
var LolloHiding4 = preload("res://Scenes/Strand/Lollo/LolloSpot4.tscn")
var LolloHiding5 = preload("res://Scenes/Strand/Lollo/LolloSpot5.tscn")
var LolloHiding6 = preload("res://Scenes/Strand/Lollo/LolloSpot6.tscn")
var lolloArray = [LolloHiding, LolloHiding2, LolloHiding3, LolloHiding4, LolloHiding5, LolloHiding6]

var BernieHiding = preload("res://Scenes/Strand/Bernie/BernieSpot.tscn")
var BernieHiding2 = preload("res://Scenes/Strand/Bernie/BernieSpot2.tscn")
var BernieHiding3 = preload("res://Scenes/Strand/Bernie/BernieSpot3.tscn")
var BernieHiding4 = preload("res://Scenes/Strand/Bernie/BernieSpot4.tscn")
var BernieHiding5 = preload("res://Scenes/Strand/Bernie/BernieSpot5.tscn")
var BernieHiding6 = preload("res://Scenes/Strand/Bernie/BernieSpot6.tscn")
var bernieArray = [BernieHiding, BernieHiding2, BernieHiding3, BernieHiding4, BernieHiding5, BernieHiding6]

@onready var BG_1 = $Strand_BG
@onready var BG_2 = $Strand_BG2
@onready var BG_3 = $Strand_BG3
# var BG = [BG_1, BG_2, BG_3]

var HUD = preload("res://Scenes/Global/HUD.tscn")
var SM = preload("res://Scripts/SceneManager.gd")

var LolloButton: TextureButton
var BernieButton: TextureButton
var EmptyButton: TextureButton

var instances = []

var HnS_1position
var HnS_2position
var HnS_3position
var HnS_4position
var HnS_5position
var HnS_6position

# var BG_Btn

@onready var transition = $AnimationPlayer

var current_scene: Node = null

var HudButton

var VFX = preload("res://Scenes/Global/vfx.tscn")
var VFXbool = false

func _ready() -> void:
	BG_1.visible = false
	BG_2.visible = false
	BG_3.visible = false
	if SM.scene1 == true:
		BG_1.visible = true
		SM.scene2 = false
		SM.scene3 = false
	elif SM.scene2 == true:
		BG_2.visible = true
		SM.scene1 = false
		SM.scene3 = false
	elif SM.scene3 == true:
		BG_3.visible = true
		SM.scene1 = false
		SM.scene2 = false
	
	AudioPlayer.play_music_level()
	newScene()
	
	transition.play("Fade_in")
	print("fade in")

func mainCode(): # on start basically
	print("Running mainCode(), current scene: ", current_scene.name)
	randomize()
	clearHUD()
	spawnHUD()
	HnS_1position = current_scene.find_child("HnS_1").position
	HnS_2position = current_scene.find_child("HnS_2").position
	HnS_3position = current_scene.find_child("HnS_3").position
	HnS_4position = current_scene.find_child("HnS_4").position
	HnS_5position = current_scene.find_child("HnS_5").position
	HnS_6position = current_scene.find_child("HnS_6").position
	
	# BG_Btn = current_scene.find_child("BG_Btn")
	
	#HnS_1position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_1").position
	#HnS_2position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_2").position
	#HnS_3position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_3").position
	#HnS_4position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_4").position
	#HnS_5position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_5").position
	#HnS_6position = get_node("ColorRect/MarginContainer/VBoxContainer/HBoxContainer/HnS_6").position
	
	reset_arrays()
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
	
	var positionArray = [HnS_1position, HnS_2position, HnS_3position, HnS_4position, HnS_5position, HnS_6position]
	
	for i in range(0, array1.size()): 
		if random_num1 == i+1:
			spawnLolloHidingSpot(positionArray[i], lolloArray[i]) # do same thign as spawn hiding spot thing
		elif random_num2 == i+1:
			spawnBernieHidingSpot(positionArray[i], bernieArray[i])
		else:
			spawnHidingSpot1(positionArray[i], hidingSpotArray[i])
	
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

func spawnLolloHidingSpot(pos, spot):
	LolloButton = spot.instantiate() as TextureButton
	add_child(LolloButton)
	LolloButton.position = pos
	instances.append(LolloButton)
	LolloButton.connect("pressed", _on_lollo_spot_pressed)
	#var VFX1 = VFX.instantiate() as CPUParticles2D
	#add_child(VFX1)
	# VFX1.position = pos
	#VFXbool = true

func spawnBernieHidingSpot(pos, spot):
	BernieButton = spot.instantiate() as TextureButton
	add_child(BernieButton)
	BernieButton.position = pos
	instances.append(BernieButton)
	BernieButton.connect("pressed", _on_bernie_spot_pressed)
	#var VFX1 = VFX.instantiate() as CPUParticles2D
	#add_child(VFX1)
	# VFX1.position = pos
	

func _on_lollo_spot_pressed():
	print("Lollo found!")
	LolloFound = true
	LolloButton.disabled = true
	isLolloBernieFound()
	AudioPlayer.play_FX(AudioPlayer.foundSFX, 0)
	#VFX.emitting = true

func _on_bernie_spot_pressed():
	print("Bernie found!")
	BernieFound = true
	BernieButton.disabled = true
	isLolloBernieFound()
	AudioPlayer.play_FX(AudioPlayer.foundSFX, 0)
	#VFX.emitting = true

func spawnHidingSpot1(pos, spot): # spawn L and B at random_num1 and 2, and spawn empty hiding spots at the rest
	EmptyButton = spot.instantiate() as TextureButton # setting this to texture button breaks everything which is quite cringe
	add_child(EmptyButton)
	EmptyButton.position = pos
	instances.append(EmptyButton)
	EmptyButton.connect("pressed", _on_empty_button_pressed)
	# isLolloAndBernieSpawned = true
	# var EmptyButton1 = EmptySpot2.instantiate()
	# EmptyButton1.position = HnS_2position

func _on_empty_button_pressed():
	print("No one here!")
	AudioPlayer.play_FX(AudioPlayer.clickSFX, 0)

func spawnHUD():
	HudButton = HUD.instantiate()
	add_child(HudButton)
	var BackButton = HudButton.find_child("Back")
	BackButton.connect("pressed", _on_back_btn_pressed)

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
	if VFXbool == true:
		VFX.queue_free()

func clearHUD():
	if HudButton:
		HudButton.queue_free()
	else:
		pass

func isLolloBernieFound():
	# Check if both LolloFound and BernieFound are true
	if LolloFound and BernieFound:
		sceneNumber +=1
		await get_tree().create_timer(1.0).timeout #wait for seconds
		# print("printed raw scene number", sceneNumber)
		# add fade out, when fade out is done, then switch scene
		transition.play("Fade_out")
		
		await get_tree().create_timer(0.6).timeout
		newScene()
		
		transition.play("Fade_in")

func newScene(): # change it so that it does what it has to, but move the actual scene array stuff elsewhere,so it does x in scene y
	# Change BG here
	if current_scene:
		current_scene.queue_free()  # Remove the previous scene
	var scene_path = sceneArray[sceneNumber % sceneArray.size()]
	var new_scene = load(scene_path).instantiate()
	get_tree().current_scene.add_child(new_scene)
	current_scene = new_scene
	call_deferred("mainCode")

func _on_back_btn_pressed() -> void:
	transition.play("Fade_out_2")
	AudioPlayer.stop_music_level()

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Fade_out_2":
		print("fade out")
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		# get_tree().change_scene_to_file(sceneArray[sceneNumber%sceneArray.size()])
		#WHY ISNT IT WORKING REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE

#func _on_bg_btn_pressed() -> void:
	#AudioPlayer.play_FX(clickSFX, 0)
	#print("hello")