extends CharacterBody2D

@onready var target_position=self.position

@export var speed=(200)

var walking = false

func _ready() -> void:
	AllwaysActive.player = self

func _physics_process(_Delta:float)->void:
	
	# old manual code
	
	#velocity=Vector2.ZERO
	#var x=Input.get_axis("ui_left","ui_right")
	#var y=Input.get_axis("ui_up","ui_down")
	
	#This is the go to position code
	
	var mouse_pos = get_global_mouse_position()
	if Input.is_action_just_pressed("lmb"):
		target_position=mouse_pos

	var error = target_position-self.global_position
	if error.length()>10:
		velocity=error.normalized()*speed
		$AnimatedSprite2D.play("walk to me")
		walking = true
	else:
		velocity=Vector2.ZERO
		$AnimatedSprite2D.play("stand front")
		walking = false
	move_and_slide()

func hide_interaction_label():
	$Label.hide()

func show_interaction_label():
	$Label.show()

func _process(_delta: float) -> void:
	$AnimatedSprite2D.play()
	




	
