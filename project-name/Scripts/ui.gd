extends CanvasLayer

@onready var health_bar = $Panel/VBoxContainer/HealthBar
@onready var stamina_bar = $Panel/VBoxContainer/StaminaBar

func _process(delta):
	health_bar.value = PlayerStats.health
	stamina_bar.value = PlayerStats.stamina
	
	health_bar.max_value = PlayerStats.health_total
	stamina_bar.max_value = PlayerStats.stamina_total
