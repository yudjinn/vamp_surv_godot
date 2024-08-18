extends Sprite2D

func _draw():
	$AnimationPlayer.play("main")
	await $AnimationPlayer.animation_finished
	queue_free()
