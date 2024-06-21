extends StaticBody2D
class_name thing_home

@onready var timer = get_node("Timer")
var timer_is_activation: bool = true

@onready var collision = get_node("CollisionPolygon2D")

var mouse_enter: bool = false
var player_is_nearby : bool = false

func _on_area_2d_area_entered(area):
	if area.name == "AreaMouse":
		mouse_enter = true

func _on_area_2d_area_exited(area):
	if area.name == "AreaMouse":
		mouse_enter = false

func _on_player_nearby_body_entered(body):
	if body.name == "Character":
		player_is_nearby = true
		
func _on_player_nearby_body_exited(body):
	if body.name == "Character":
		player_is_nearby = false

func _on_timer_timeout():
	timer_is_activation = true
