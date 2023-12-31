extends Node2D

func _on_tick_timer_timeout():
	var health = PlayerStats.health
	var health_total = PlayerStats.health_total
	
	var stamina = PlayerStats.stamina
	var stamina_total = PlayerStats.stamina_total
	
	if health < health_total:
		PlayerStats.change_health(1)
	
	if stamina < stamina_total:
		PlayerStats.change_stamina(2)

func _process(delta):
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
