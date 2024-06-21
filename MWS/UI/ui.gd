extends CanvasLayer

@onready var sleep_scale = get_node("TextureRect/sleepScale")
@onready var timer_sleep_scale = get_node("TextureRect/sleepScale/Timer")
var exhaustion = 1

func _ready():
	GlobalVars.value_sleep_scale = sleep_scale.value
	
func _on_timer_timeout():
	sleep_scale.value = GlobalVars.value_sleep_scale
	sleep_scale.value -= exhaustion
	GlobalVars.value_sleep_scale = sleep_scale.value
