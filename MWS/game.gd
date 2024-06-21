extends Node2D

@onready var area_mouse = get_node("AreaMouse")

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVars.player = get_node("Character")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	area_mouse.global_position = get_global_mouse_position()
