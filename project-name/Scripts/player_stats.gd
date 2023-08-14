extends Node

var health_total = 100
var health = 100

var stamina_total = 100
var stamina = 100

func damage_health(amount):
	health -= amount

func damage_stamina(amount):
	stamina -= amount
