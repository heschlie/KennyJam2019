extends Character

export (Constants.ITEMS) var has_item
export (Constants.ITEMS) var wants_item
export (String, MULTILINE) var dialog = 'Hello.'

var player: Player

func _init():
	add_to_group('npcs')

func set_player(player: Player):
	self.player = player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Hitbox.overlaps_area(player.action_box) and Input.is_action_just_released("interact"):
		action()

func action():
	print('hello')