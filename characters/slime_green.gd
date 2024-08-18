extends Sprite2D
var health = 5

func _ready():
	var area = $"Area2D"
	area.body_entered.connect(Callable(self, "_take_damage"))
	
func _take_damage(area):
	print("area entered")
	health -= 1
	if health < 1:
		queue_free()
		const DEATH_SCENE = preload("res://characters/death_animation.tscn")
		var death = DEATH_SCENE.instantiate()
		get_parent().add_child(death)
		death.global_position = self.global_position
	
		

func _physics_process(delta):
	play_walk_animation()

	
func play_walk_animation():
	$AnimationPlayer.play("walk")
