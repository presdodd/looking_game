extends Node2D
@onready var right_head = $"Right Head"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_x = 0
	var direction_y = 0
	right_head.animation = "center"
	
	if Input.is_action_pressed("L_L"):
		right_head.animation = "left" 
		direction_x -= 1
	if Input.is_action_pressed("L_R"):
		right_head.animation = "right"
		direction_x += 1
	if Input.is_action_pressed("L_U"):
		right_head.animation = "up" 
		direction_y -= 1
	if Input.is_action_pressed("L_D"):
		right_head.animation = "down" 
		direction_y += 1

