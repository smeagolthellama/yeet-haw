extends RigidBody2D

var jumpspeed = 120
var threshhold = 1e-1

func _ready():
	$sprite.play("default")
	pass

func _process(_delta):
	if($sprite.frame==4):
		$sprite.play("default")
	if(Input.is_action_pressed("ui_up") and linear_velocity.length()<threshhold):
		$sprite.play("jump")
		linear_velocity=Vector2(0,-jumpspeed)

