extends CharacterBody2D

@onready var anim_tree = $AnimationTree
const SPEED = 100.0
var direction = Vector2.ZERO

func _ready():
	anim_tree.active = true

func _process(delta):
	update_anim_parameters()
	
	if Input.is_action_just_pressed("special"):
		PlayerStats.change_stamina(-5)

func _physics_process(delta):
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()

func update_anim_parameters():
	if velocity == Vector2.ZERO:
		anim_tree["parameters/conditions/idle"] = true
		anim_tree["parameters/conditions/is_moving"] = false
	else:
		anim_tree["parameters/conditions/idle"] = false
		anim_tree["parameters/conditions/is_moving"] = true
	
	if Input.is_action_just_pressed("attack"):
		anim_tree["parameters/conditions/attack"] = true
	else:
		anim_tree["parameters/conditions/attack"] = false
	
	if Input.is_action_just_pressed("special"):
		anim_tree["parameters/conditions/special"] = true
	else:
		anim_tree["parameters/conditions/special"] = false
	
	if direction != Vector2.ZERO:
		anim_tree["parameters/Idle/blend_position"] = direction.normalized()
		anim_tree["parameters/Attack/blend_position"] = direction.normalized()
		anim_tree["parameters/Special/blend_position"] = direction.normalized()
		anim_tree["parameters/Walk/blend_position"] = direction.normalized()
