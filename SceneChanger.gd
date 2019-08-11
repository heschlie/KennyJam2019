extends CanvasLayer

signal scene_changed()

onready var anim = $AnimationPlayer

var scenes = {}
var current_scene = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	scenes[current_scene.filename] = current_scene

func change_scene(scene: String, player: Player, delay: float = 0):
	call_deferred("_deferred_change_scene", scene, delay)

func _deferred_change_scene(scene: String, delay: float):
	var root = get_tree().get_root()
	var s = load_scene(scene)
	print(s.filename)
	
	yield(get_tree().create_timer(delay), 'timeout')
	anim.play("fade")
	yield(anim, 'animation_finished')
	root.add_child(s)
	get_tree().set_current_scene(s)
	root.remove_child(current_scene)
	current_scene = s
	anim.play_backwards("fade")

func load_scene(path: String):
	if scenes.has(path):
		return scenes[path]
	
	var s = ResourceLoader.load(path)
	var scene = s.instance()
	scenes[path] = scene
	return scene
