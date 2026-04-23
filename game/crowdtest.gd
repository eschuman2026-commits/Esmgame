extends PathFollow2D

var speed = 60

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	progress+=speed*delta
	$AnimatedSprite2D.play("testboy")
