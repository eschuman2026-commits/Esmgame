extends Control

func _on_button_pressed() -> void:
	AllwaysActive.current_level = AllwaysActive.start_level.instantiate()
	get_tree().get_root().add_child(AllwaysActive.current_level)
	$CanvasLayer.hide()
