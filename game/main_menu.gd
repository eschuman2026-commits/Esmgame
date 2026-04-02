extends Control

@export var levelscene : PackedScene

func _on_button_pressed() -> void:
	get_tree().get_root().add_child(levelscene.instantiate())
	$CanvasLayer.hide()
