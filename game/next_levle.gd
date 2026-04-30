extends Area2D

@export var levelpath : String

#The three functions bellow are for genderal interactions.
#Replace "new_level" with whatever you want to happen.
func _physics_process(_delta: float) -> void:
	for body in get_overlapping_bodies():
		if Input.is_action_just_pressed("ui_accept"):
			#unique code
			new_level()


func _on_body_entered(_body: Node2D) -> void:
	AllwaysActive.player.show_interaction_label()

func _on_body_exited(_body: Node2D) -> void:
	AllwaysActive.player.hide_interaction_label()


func new_level():
	AllwaysActive.current_level = load(levelpath).instantiate()
	AllwaysActive.current_level.queue_free()
	get_tree().get_root().add_child(AllwaysActive.current_level)
