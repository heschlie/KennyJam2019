extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	
	if velocity.x != 0 or velocity.y != 0:
		var angle = rad2deg(velocity.angle()) - 90
		$Sprite.set_rotation_degrees(angle)
		print(angle)
	velocity = velocity.normalized() * speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	get_input()
	move_and_slide(velocity)
