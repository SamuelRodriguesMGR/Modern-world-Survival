extends thing_home

func _ready():
	pass

func _process(_delta):
	if mouse_enter and Input.is_action_pressed("left_clicker") and player_is_nearby and timer_is_activation:
		timer_is_activation = false
		collision.disabled = true
		GlobalVars.player.global_position = global_position - Vector2(2, 2)
		GlobalVars.player.animation_player.play("sleep")
		GlobalVars.value_sleep_scale = GlobalVars.max_value_sleep_scale
		GlobalVars.is_can_movement = false
		timer.start()
		
	if timer_is_activation:
		GlobalVars.player.animation_player.play("RESET")
		collision.disabled = false
		GlobalVars.is_can_movement = true
		

		
