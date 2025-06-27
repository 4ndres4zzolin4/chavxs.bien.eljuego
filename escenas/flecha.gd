extends Area2D


func _on_body_entered(body):
	if body.name == "Player":
		var old_level = get_node("LevelContainer/CurrentLevel")
		old_level.queue_free()
		get_tree().change_scene_to_file("res://escenas/Outro.tscn")
