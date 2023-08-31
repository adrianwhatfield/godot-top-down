extends Control



func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/settings_menu.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
