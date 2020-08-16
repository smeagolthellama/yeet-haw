extends Node

export (PackedScene) var Cactus
export (int) var cactusSpeed
export (int) var score

func _ready():
	$Camera2D/Cowboy/VisibilityNotifier2D.connect("screen_exited",self,"_on_cowboy_left_screen");
	pass

func _on_cowboy_left_screen():
	print($Camera2D/Cowboy.linear_velocity)
	print($Camera2D/Cowboy.angular_velocity)
	print($Camera2D/Cowboy.position)
	$Camera2D/Cowboy.position=$Camera2D/cowboy_spot.position
	$Camera2D/Cowboy.linear_velocity*=0
	cactusSpeed=50
	

func _process(_delta):
	$Label.text=str(score)

func _on_cactus_timer_timeout():
	cactusSpeed+=10
	var cactus = Cactus.instance()
	add_child(cactus)
	cactus.position=$Position2D.position
	cactus.scale*=0.1
	cactus.linear_velocity=Vector2(-1,0)*cactusSpeed
