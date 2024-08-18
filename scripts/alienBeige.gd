extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 500
	move_and_slide()
	
	if velocity.length() > 0.0:
		$Sprite2D.play_walk_animation()
	else:
		$Sprite2D.play_idle_animation()

	
	
