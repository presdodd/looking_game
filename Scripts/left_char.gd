extends Node2D
@onready var left_head = $"Left Head"

var actionable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_x = 0
	var direction_y = 0
	
	if actionable:
		left_head.animation = "center"
	if Input.is_action_pressed("L_L") and actionable:
		left_head.animation = "left" 
		direction_x -= 1
	if Input.is_action_pressed("L_R") and actionable:
		left_head.animation = "right"
		direction_x += 1
	if Input.is_action_pressed("L_U") and actionable:
		left_head.animation = "up" 
		direction_y -= 1
	if Input.is_action_pressed("L_D") and actionable:
		left_head.animation = "down" 
		direction_y += 1

