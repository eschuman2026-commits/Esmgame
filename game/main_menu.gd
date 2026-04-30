extends Control

@export var current_level: PackedScene

func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(current_level)
	$CanvasLayer/Button.hide()
	
	#AllwaysActive.current_level = AllwaysActive.start_level.instantiate()
	#get_tree().get_root().add_child(AllwaysActive.current_level)
	#$CanvasLayer.hide()
