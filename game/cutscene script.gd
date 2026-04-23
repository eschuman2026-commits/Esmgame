extends AnimationPlayer

@export var levelpath : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.play("exit")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func new_level():
	AllwaysActive.current_level.queue_free()
	AllwaysActive.current_level = load(levelpath).instantiate()
	get_tree().get_root().add_child(AllwaysActive.current_level)
