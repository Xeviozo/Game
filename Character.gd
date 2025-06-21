extends CharacterBody2D
var Movedir: Vector2
var movespeed = 320
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#test
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _physics_process(delta):
	Movedir = Vector2(int(Input.is_action_pressed("Right"))-int(Input.is_action_pressed("Left")),int(Input.is_action_pressed("Down"))-int(Input.is_action_pressed("Up")))
	velocity = movespeed*Movedir.normalized()
	move_and_slide()


