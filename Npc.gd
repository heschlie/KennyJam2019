extends Character

export (Constants.ITEMS) var has_item
export (Constants.ITEMS) var wants_item
export (String, MULTILINE) var dialog = 'Hello.'

var player: Player
onready var dialogBox = $Sprite/Container/Label
onready var anim = $AnimationPlayer

func _init():
	add_to_group('npcs')

func set_player(player: Player):
	self.player = player

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogBox.set_text(dialog)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Hitbox.overlaps_area(player.action_box) and Input.is_action_just_released("interact"):
		action()

func action():
	anim.play("fade")
	print('hello')

func _on_Hitbox_area_exited(area):
	anim.play_backwards("fade")
