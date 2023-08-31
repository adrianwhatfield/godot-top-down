extends Control

func _on_fullscreen_toggled(button_pressed):
	if button_pressed == true:
		var resolution = DisplayServer.screen_get_size()
		DisplayServer.window_set_size(resolution)
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")


func _on_resolution_item_selected(index):
	match index:
		0: DisplayServer.window_set_size(Vector2(1920, 1080))
		1: DisplayServer.window_set_size(Vector2(1280, 800))
		2: DisplayServer.window_set_size(Vector2(1280, 720))
