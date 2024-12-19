extends Control

# Declare arrays
var array1 = [1, 2, 3, 4, 5, 6]
var array2 = [1, 2, 3, 4, 5, 6]

var locationArray = [
	"res://Scenes/Strand/Hide_Seek_control_test.tscn",
	"res://Scenes/UnderVatten/Hide_Seek_control_test_2.tscn", 
	"res://Scenes/Inomhus/Hide_Seek_control_test_3.tscn",
	"res://Scenes/Berg/Hide_Seek_control_test_4.tscn",
	"res://Scenes/Djungel/Hide_Seek_control_test_5.tscn",
	"res://Scenes/Gym/Hide_Seek_control_test_6.tscn"
	] # just add more scenes

static var sceneNumber = 0

# Declare booleans
var LolloFound = false
var BernieFound = false

# Strand hiding spots
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

var strandArray = [lolloArray, bernieArray, hidingSpotArray]

# under vatten hiding spots
var EmptyVatten = preload("res://Scenes/UnderVatten/Emtpy/empty_water.tscn")
var EmptyVatten2 = preload("res://Scenes/UnderVatten/Emtpy/empty_water2.tscn")
var EmptyVatten3 = preload("res://Scenes/UnderVatten/Emtpy/empty_water3.tscn")
var EmptyVatten4 = preload("res://Scenes/UnderVatten/Emtpy/empty_water4.tscn")
var EmptyVatten5 = preload("res://Scenes/UnderVatten/Emtpy/empty_water5.tscn")
var EmptyVatten6 = preload("res://Scenes/UnderVatten/Emtpy/empty_water6.tscn")
var VattenSpotArray = [EmptyVatten, EmptyVatten2, EmptyVatten3, EmptyVatten4, EmptyVatten5, EmptyVatten6]

var LolloVatten = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten.tscn")
var LolloVatten2 = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten2.tscn")
var LolloVatten3 = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten3.tscn")
var LolloVatten4 = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten4.tscn")
var LolloVatten5 = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten5.tscn")
var LolloVatten6 = preload("res://Scenes/UnderVatten/LolloVatten/LolloVatten6.tscn")
var lolloVattenArray = [LolloVatten, LolloVatten2, LolloVatten3, LolloVatten4, LolloVatten5, LolloVatten6]

var BernieVatten = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten.tscn")
var BernieVatten2 = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten2.tscn")
var BernieVatten3 = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten3.tscn")
var BernieVatten4 = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten4.tscn")
var BernieVatten5 = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten5.tscn")
var BernieVatten6 = preload("res://Scenes/UnderVatten/BernieVatten/BernieVatten6.tscn")
var bernieVattenArray = [BernieVatten, BernieVatten2, BernieVatten3, BernieVatten4, BernieVatten5, BernieVatten6]

var vattenArray = [lolloVattenArray, bernieVattenArray, VattenSpotArray]

# inomhus hiding spots
var emptyInomhus = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus.tscn")
var emptyInomhus2 = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus2.tscn")
var emptyInomhus3 = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus3.tscn")
var emptyInomhus4 = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus4.tscn")
var emptyInomhus5 = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus5.tscn")
var emptyInomhus6 = preload("res://Scenes/Inomhus/EmptyInomhus/emptyInomhus6.tscn")
var emptyInomhusArray = [emptyInomhus, emptyInomhus2, emptyInomhus3, emptyInomhus4, emptyInomhus5, emptyInomhus6]

var LolloInomhus = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus.tscn")
var LolloInomhus2 = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus2.tscn")
var LolloInomhus3 = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus3.tscn")
var LolloInomhus4 = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus4.tscn")
var LolloInomhus5 = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus5.tscn")
var LolloInomhus6 = preload("res://Scenes/Inomhus/LolloInomhus/LolloInomhus6.tscn")
var lolloInomhusArray =[LolloInomhus, LolloInomhus2, LolloInomhus3, LolloInomhus4, LolloInomhus5, LolloInomhus6]

var BernieInomhus = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus.tscn")
var BernieInomhus2 = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus2.tscn")
var BernieInomhus3 = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus3.tscn")
var BernieInomhus4 = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus4.tscn")
var BernieInomhus5 = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus5.tscn")
var BernieInomhus6 = preload("res://Scenes/Inomhus/BernieInomhus/BernieInomhus6.tscn")
var bernieInomhusArray = [BernieInomhus, BernieInomhus2, BernieInomhus3, BernieInomhus4, BernieInomhus5, BernieInomhus6]

var inomhusArray = [lolloInomhusArray, bernieInomhusArray, emptyInomhusArray]

# berg hiding spots
var emptyBerg = preload("res://Scenes/Berg/Empty_Berg/emptyBerg.tscn")
var emptyBerg2 = preload("res://Scenes/Berg/Empty_Berg/emptyBerg2.tscn")
var emptyBerg3 = preload("res://Scenes/Berg/Empty_Berg/emptyBerg3.tscn")
var emptyBerg4 = preload("res://Scenes/Berg/Empty_Berg/emptyBerg4.tscn")
var emptyBerg5 = preload("res://Scenes/Berg/Empty_Berg/emptyBerg5.tscn")
var emptyBerg6 = preload("res://Scenes/Berg/Empty_Berg/emptyBerg6.tscn")
var emptyBergArray = [emptyBerg, emptyBerg2, emptyBerg3, emptyBerg4, emptyBerg5, emptyBerg6]

var LolloBerg = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg.tscn")
var LolloBerg2 = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg2.tscn")
var LolloBerg3 = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg3.tscn")
var LolloBerg4 = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg4.tscn")
var LolloBerg5 = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg5.tscn")
var LolloBerg6 = preload("res://Scenes/Berg/Lollo_Berg/LolloBerg6.tscn")
var lolloBergArray = [LolloBerg, LolloBerg2, LolloBerg3, LolloBerg4, LolloBerg5, LolloBerg6]

var BernieBerg = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg.tscn")
var BernieBerg2 = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg2.tscn")
var BernieBerg3 = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg3.tscn")
var BernieBerg4 = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg4.tscn")
var BernieBerg5 = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg5.tscn")
var BernieBerg6 = preload("res://Scenes/Berg/Bernie_Berg/BernieBerg6.tscn")
var bernieBergArray = [BernieBerg, BernieBerg2, BernieBerg3, BernieBerg4, BernieBerg5, BernieBerg6]

var bergArray = [lolloBergArray, bernieBergArray, emptyBergArray]

# djungel hiding spots
var emptyDjungel = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel.tscn")
var emptyDjungel2 = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel2.tscn")
var emptyDjungel3 = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel3.tscn")
var emptyDjungel4 = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel4.tscn")
var emptyDjungel5 = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel5.tscn")
var emptyDjungel6 = preload("res://Scenes/Djungel/Empty_Djungel/emptyDjungel6.tscn")
var emptyDjungelArray = [emptyDjungel, emptyDjungel2, emptyDjungel3, emptyDjungel4, emptyDjungel5, emptyDjungel6]

var LolloDjungel = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel.tscn")
var LolloDjungel2 = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel2.tscn")
var LolloDjungel3 = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel3.tscn")
var LolloDjungel4 = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel4.tscn")
var LolloDjungel5 = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel5.tscn")
var LolloDjungel6 = preload("res://Scenes/Djungel/Lollo_Djungel/LolloDjungel6.tscn")
var lolloDjungelArray = [LolloDjungel, LolloDjungel2, LolloDjungel3, LolloDjungel4, LolloDjungel5, LolloDjungel6]

var BernieDjungel = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel.tscn")
var BernieDjungel2 = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel2.tscn")
var BernieDjungel3 = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel3.tscn")
var BernieDjungel4 = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel4.tscn")
var BernieDjungel5 = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel5.tscn")
var BernieDjungel6 = preload("res://Scenes/Djungel/Bernie_Djungel/BernieDjungel6.tscn")
var bernieDjungelArray = [BernieDjungel, BernieDjungel2, BernieDjungel3, BernieDjungel4, BernieDjungel5, BernieDjungel6]

var djungelArray = [lolloDjungelArray, bernieDjungelArray, emptyDjungelArray]

var emptyGym = preload("res://Scenes/Gym/EmptyGym/emptyGym.tscn")
var emptyGym2 = preload("res://Scenes/Gym/EmptyGym/emptyGym2.tscn")
var emptyGym3 = preload("res://Scenes/Gym/EmptyGym/emptyGym3.tscn")
var emptyGym4 = preload("res://Scenes/Gym/EmptyGym/emptyGym4.tscn")
var emptyGym5 = preload("res://Scenes/Gym/EmptyGym/emptyGym5.tscn")
var emptyGym6 = preload("res://Scenes/Gym/EmptyGym/emptyGym6.tscn")
var emptyGymArray = [emptyGym, emptyGym2, emptyGym3, emptyGym4, emptyGym5, emptyGym6]

var LolloGym = preload("res://Scenes/Gym/LolloGym/LolloGym.tscn")
var LolloGym2 = preload("res://Scenes/Gym/LolloGym/LolloGym2.tscn")
var LolloGym3 = preload("res://Scenes/Gym/LolloGym/LolloGym3.tscn")
var LolloGym4 = preload("res://Scenes/Gym/LolloGym/LolloGym4.tscn")
var LolloGym5 = preload("res://Scenes/Gym/LolloGym/LolloGym5.tscn")
var LolloGym6 = preload("res://Scenes/Gym/LolloGym/LolloGym6.tscn")
var lolloGymArray = [LolloGym, LolloGym2, LolloGym3, LolloGym4, LolloGym5, LolloGym6]

var bernieGym = preload("res://Scenes/Gym/BernieGym/BernieGym.tscn")
var bernieGym2 = preload("res://Scenes/Gym/BernieGym/BernieGym2.tscn")
var bernieGym3 = preload("res://Scenes/Gym/BernieGym/BernieGym3.tscn")
var bernieGym4 = preload("res://Scenes/Gym/BernieGym/BernieGym4.tscn")
var bernieGym5 = preload("res://Scenes/Gym/BernieGym/BernieGym5.tscn")
var bernieGym6 = preload("res://Scenes/Gym/BernieGym/BernieGym6.tscn")
var bernieGymArray = [bernieGym, bernieGym2, bernieGym3, bernieGym4, bernieGym5, bernieGym6]

var gymArray = [lolloGymArray, bernieGymArray, emptyGymArray]

#Put "packages" in this one
var sceneArray = [strandArray, vattenArray, inomhusArray, bergArray, djungelArray, gymArray]

@onready var BG_1 = $Strand_BG
@onready var BG_2 = $UnderVatten_BG
@onready var BG_3 = $InomHus_BG
@onready var BG_4 = $Berg_BG
@onready var BG_5 = $Djungel_BG
@onready var BG_6 = $Gym_BG
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

var rng = RandomNumberGenerator.new()
var pitch = 0

func _ready() -> void:
	BG_1.visible = false
	BG_2.visible = false
	BG_3.visible = false
	BG_4.visible = false
	BG_5.visible = false
	BG_6.visible = false
	if SM.scene == 1:
		BG_1.visible = true
		AudioPlayer.play_music_level()
	
	elif SM.scene == 2:
		BG_2.visible = true
		AudioPlayer.play_music_level2()
	
	elif SM.scene == 3:
		BG_3.visible = true
		AudioPlayer.play_music_level3()
	
	elif SM.scene == 4:
		BG_4.visible = true
		AudioPlayer.play_music_level3()
	
	elif SM.scene == 5:
		BG_5.visible = true
		AudioPlayer.play_music_level3()
	
	elif SM.scene == 6:
		BG_6.visible = true
		AudioPlayer.play_music_level6()

	newScene()
	
	transition.play("Fade_in")
	#print("fade in")

func mainCode(): # on start basically
	#print("Running mainCode(), current scene: ", current_scene.name)
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
	#print("First random number: ", random_num1)
	
	# Remove the selected number from array2
	array2.erase(random_num1)
	
	# Roll a random number from the updated array2
	var random_num2 = get_random_from_array(array2)
	#print("Second random number: ", random_num2)
	
	# You can now use both random_num1 and random_num2 as needed
	#print("First random number from array1: ", random_num1)
	#print("Second random number from array2 (after removal): ", random_num2)
	
	var positionArray = [HnS_1position, HnS_2position, HnS_3position, HnS_4position, HnS_5position, HnS_6position]
	
	for i in range(0, array1.size()): 
		if random_num1 == i+1:
			spawnLolloHidingSpot(positionArray[i], sceneArray[SM.scene-1][0][i]) # do same thign as spawn hiding spot thing
		elif random_num2 == i+1:
			spawnBernieHidingSpot(positionArray[i], sceneArray[SM.scene-1][1][i])
		else:
			spawnHidingSpot1(positionArray[i], sceneArray[SM.scene-1][2][i])
	
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
	#print("Lollo found!")
	LolloFound = true
	LolloButton.disabled = true
	isLolloBernieFound()

	AudioPlayer.play_FX(AudioPlayer.foundSFX, 0)

	#var next_focus = get_focus_neighbor(SIDE_RIGHT)
	#if next_focus:
		#next_focus.grab_focus()
	LolloButton.focus_mode = Control.FOCUS_NONE
	
	#VFX.emitting = true

func _on_bernie_spot_pressed():
	#print("Bernie found!")
	BernieFound = true
	BernieButton.disabled = true
	isLolloBernieFound()
	AudioPlayer.play_FX(AudioPlayer.foundSFX, 0)
	#VFX.emitting = true
	BernieButton.focus_mode = Control.FOCUS_NONE

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
	#print("No one here!")
	AudioPlayer.play_FX(AudioPlayer.clickSFX, -5.0)


func _unhandled_input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_TAB:
		# Check if no node is currently focused
		if not get_tree().root.gui_get_focus_owner():
			# Find the first TextureButton in the hierarchy
			var first_button = find_first_texture_button(self)
			if first_button:
				first_button.grab_focus()

func find_first_texture_button(node: Node) -> TextureButton:
	# Recursively find the first TextureButton
	if node is TextureButton:
		return node
	for child in node.get_children():
		var result = find_first_texture_button(child)
		if result:
			return result
	return null


func spawnHUD():
	HudButton = HUD.instantiate()
	add_child(HudButton)
	move_child(HudButton, get_child_count() - 1)
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
	#print("Arrays reset!")

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
		
		await get_tree().create_timer(0.26).timeout
		newScene()
		
		transition.play("Fade_in")

func newScene(): # change it so that it does what it has to, but move the actual scene array stuff elsewhere,so it does x in scene y
	# Change BG here
	if current_scene:
		current_scene.queue_free()  # Remove the previous scene
	# var scene_path = locationArray[sceneNumber % locationArray.size()]
	var new_scene = load(locationArray[SM.scene-1]).instantiate()
	get_tree().current_scene.add_child(new_scene)
	current_scene = new_scene
	call_deferred("mainCode")

func _on_back_btn_pressed():
	toMainMenu()

func _input(event):
	if event.is_action_pressed("Quit"):
		toMainMenu()

func toMainMenu():
	transition.play("Fade_out_2")
	AudioPlayer.stop_music_level()

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Fade_out_2":
		#print("fade out")
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		# get_tree().change_scene_to_file(sceneArray[sceneNumber%sceneArray.size()])
		#WHY ISNT IT WORKING REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE

#func _on_bg_btn_pressed() -> void:
	#AudioPlayer.play_FX(clickSFX, 0)
	#print("hello")
