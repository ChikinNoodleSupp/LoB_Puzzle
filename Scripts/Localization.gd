extends Control

var languageButtons = preload("res://Scenes/MainMenu.tscn")
var setSwedish = false
var setEnglish = false
var setDanish = false
var setNorwegian = false
var setFinnish = false

func _input(_ev): #Remove before building, risk of crashing when played in browser
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
		


# var testNum = 3
