extends TextureRect
class_name Item

export var current_item = 'cup'
var items = {
	'cup': "res://assets/generic_items/genericItems_spritesheet_colored.genericItem_color_003.atlastex"
}

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_texture(load(items['cup']))
	pass # Replace with function body.

func set_current_item(name: String):
	self.current_item = name

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
