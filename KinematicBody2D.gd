extends KinematicBody2D

var direction = Vector2()

func _ready():
    screen_size = get_viewport_rect().size
    pad_size = get_node("left").get_texture().get_size()
    set_process(true)

func _process(delta):
	set_pos