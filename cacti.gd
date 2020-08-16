extends RigidBody2D



func _ready():
	var cactus_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = cactus_types[randi() % cactus_types.size()]
	pass


func _on_VisibilityNotifier2D_screen_exited():
	$"..".score+=1
	queue_free()
	pass # Replace with function body.
