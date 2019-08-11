extends KinematicBody2D
class_name Character

export (int) var speed = 100
var velocity = Vector2()
var action_box: Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	action_box = $Sprite/ActionBox
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
