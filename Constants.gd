extends Node

signal item_changed 

enum ITEMS {
	Stapler
	Cookbook
	Shovel
	Capsule
	Beard
	Morningstar
	Workshop
	Deed
}

var current_item = ITEMS.Stapler

func set_item(item):
	print(item)
	current_item = item
	emit_signal("item_changed", item)
