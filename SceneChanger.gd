extends CanvasLayer

signal scene_changed()

onready var anim = $AnimationPlayer

func change_scene(scene: String, delay: float = 0):
	yield(get_tree().create_timer(delay), 'timeout')
	anim.play("fade")
	yield(anim, 'animation_finished')
	assert(get_tree().change_scene(path) == OK)
	anim.play_backwards("fade")
