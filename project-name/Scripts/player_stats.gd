extends Node

var health_total = 100
var health = 100

var stamina_total = 100
var stamina = 100

func change_health(amount):
	health += amount

func change_stamina(amount):
	stamina += amount
