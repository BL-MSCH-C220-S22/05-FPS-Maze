extends Area


func _on_Enemy_body_entered(body):
	if body.name == "Player":
		var _scene = get_tree().change_scene("res://UI/Menu.tscn")


func _on_Area_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null("/root/Game/Zombie")
		if sound != null:
			sound.playing = true
