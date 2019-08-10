extends Area2D
var player: Character

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group('interactable')
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	if overlaps_area(player.action_box):
#		print('asdf')

func set_player(player: Character):
	self.player = player
