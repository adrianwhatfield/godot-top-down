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
