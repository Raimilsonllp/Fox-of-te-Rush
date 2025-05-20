extends VideoStreamPlayer


func _on_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/FASE1.tscn")
	pass # Replace with function body.
