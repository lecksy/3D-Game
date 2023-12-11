extends CharacterBody3D




func _on_area_3d_body_entered(body):
	$Dialogue.show()
	$Dialogue/Control/Label.text = "Oh, hey! You made it out alright. Glad to see it. Watch out though, I heard there's an impostor among us."
	$Dialogue/Timer.start()
	
	


func _on_timer_timeout():
	$Dialogue.queue_free()
	$Area3D.queue_free()
