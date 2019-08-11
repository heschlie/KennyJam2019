extends Area2D
class_name Door

export (String) var target_scene = "res://LevelName.tscn"

var player: Character

func _init():
	add_to_group('interactable')

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if overlaps_area(player.action_box) and Input.is_action_just_released("interact"):
		SceneChanger.change_scene(target_scene, player)

func set_player(player: Character):
	self.player = player
