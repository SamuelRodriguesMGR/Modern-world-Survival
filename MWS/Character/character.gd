extends CharacterBody2D
class_name Character 

const FRICTION_FACTOR : float = 0.15 # трение

@export var accerelation: int = 5 # скорость
@export var maxSpeed: int = 40 # макс скорость

var move_direction: Vector2

@onready var sprite = get_node("Sprite2D")
@onready var animation_player = get_node("AnimationPlayer")
	
func _physics_process(_delta):
	get_input()
	move()
	move_and_slide()
	if GlobalVars.value_sleep_scale == 0: death()
	velocity = lerp(velocity, Vector2.ZERO, FRICTION_FACTOR) 
	
func move():
	if move_direction[0] == -1:
		sprite.flip_h = true  
	elif move_direction[0] == 1:
		sprite.flip_h = false
	if GlobalVars.is_can_movement:
		velocity += move_direction * accerelation
		velocity = velocity.limit_length(maxSpeed)

func get_input():
	move_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
func death():
	queue_free()
		
		
		
		
		

