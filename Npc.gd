extends Character

export (Constants.ITEMS) var has_item
export (Constants.ITEMS) var wants_item
export (String, MULTILINE) var dialog = 'Hello.'
export (String, MULTILINE) var item_dialog = 'Hello.'

var player: Player
onready var dialogBox = $Sprite/Container/Label
onready var anim = $AnimationPlayer
var showingDialog = false

func _init():
	add_to_group('npcs')

func set_player(player: Player):
	self.player = player

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogBox.set_text(dialog)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Hitbox.overlaps_area(player.action_box) and Input.is_action_just_released("interact") and !showingDialog:
		action()

func action():
	if Constants.current_item == wants_item:
		dialogBox.set_text(item_dialog)
		Constants.set_item(has_item)
	
	player.set_process(false)
	anim.play("fade")
	showingDialog = true
	yield(get_tree().create_timer(1.5), "timeout")
	player.set_process(true)

func _on_Hitbox_area_exited(area):
	if showingDialog:
		anim.play_backwards("fade")
		showingDialog = false
