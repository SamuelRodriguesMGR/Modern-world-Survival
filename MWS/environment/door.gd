extends thing_home

@onready var sprite = get_node("Door")

func _process(_delta):
	if Input.is_action_pressed("left_clicker") and timer_is_activation and mouse_enter and player_is_nearby:
		sprite.visible = 1 - int(sprite.visible)
		collision.disabled = 1 - int(collision.disabled)
		timer_is_activation = false
		timer.start()


