extends TextureRect
class_name Item

export (Constants.ITEMS) var current_item
onready var items = {
	Constants.ITEMS.Stapler: load_image("res://assets/tankRed_barrel2_outline.png"),
	Constants.ITEMS.Capsule: load_image("res://genericItem_color_054.png"),
	Constants.ITEMS.Beard: load_image("res://facialHair_blonde (12).png"),
	Constants.ITEMS.Morningstar: load_image("res://item_toolFlail.png"),
	Constants.ITEMS.Workshop: load_image("res://hexagonTile_07.png"),
	Constants.ITEMS.Deed: load_image("res://genericItem_color_037.png")
}

# Called when the node enters the scene tree for the first time.
func _ready():
	set_texture(items[Constants.ITEMS.Stapler])
	pass # Replace with function body.

func set_current_item(name: String):
	self.current_item = name

func load_image(path: String) -> ImageTexture:
	var img = Image.new()
	var imageTex = ImageTexture.new()
	
	img.load(path)
	imageTex.create_from_image(img)
	
	return imageTex
