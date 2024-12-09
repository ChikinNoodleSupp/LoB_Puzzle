extends Control

var languageButtons = preload("res://Scenes/MainMenu.tscn")
static var setSwedish = false
static var setEnglish = false
static var setDanish = false
static var setNorwegian = false
static var setFinnish = false

func _input(_ev): #Remove before building, risk of crashing when played in browser
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
		

func _ready() -> void:
	setSwedish = true
