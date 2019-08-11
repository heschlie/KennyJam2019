extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	link_player()

func link_player():
	for i in get_tree().get_nodes_in_group('interactable'):
		i.set_player($Player)
	
	for i in get_tree().get_nodes_in_group('npcs'):
		i.set_player($Player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
