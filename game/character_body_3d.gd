extends CharacterBody3D

@export var speed = 500

@export var fall_exeleration= 75

func _physics_process(delta: float) -> void:
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("move right!"):
		direction.x += 1
	if Input.is_action_pressed("move left!"): 
		direction.x -= 1
	if Input.is_action_pressed("move backward!"): 
		direction.y += 1
	if Input.is_action_pressed("move forward!"):
		direction.y -= 1
		
	move_and_slide()
		
	velocity.x= direction.x *speed 
	velocity.y= direction.y *speed 
	move_and_slide()
