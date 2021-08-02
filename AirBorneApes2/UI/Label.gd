extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var alt = get_parent().altitude
	text = "Altitude : " + str(round(alt))
	if alt < 300:
		get_tree().change_scene("res://title_screen.tscn")

#ITS NOT A RANDOM CRASH
