extends CharacterBody2D

@onready var target_position=self.position

@export var speed=(200)

func _ready() -> void:
	AllwaysActive.player = self

func _physics_process(Delta:float)->void:
	
	# old manual code
	
	#velocity=Vector2.ZERO
	#var x=Input.get_axis("ui_left","ui_right")
	#var y=Input.get_axis("ui_up","ui_down")
	
	#This is the go to position code
	
	var mouse_pos = get_global_mouse_position()
	if Input.is_action_just_pressed("lmb"):
		target_position=mouse_pos

	velocity=(target_position-self.position).normalized()*speed
	
	move_and_slide()
	
	
	
	

func _process(delta: float) -> void:
	$AnimatedSprite2D.play()
	




	
