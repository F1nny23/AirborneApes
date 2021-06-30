extends Control


func _on_Start_pressed():
	get_tree().change_scene("res://GameLevel.tscn")


func _on_Settings_pressed():
	pass 


func _on_Quit_pressed():
	get_tree().quit()




