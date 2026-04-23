extends Node

var player : CharacterBody2D

var current_level : Node

var paused = false

@export var start_level : PackedScene
@export var the_crossroads : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		paused = !paused
		
		if paused:
			Engine.time_scale = 0
		else:
			Engine.time_scale = 1
