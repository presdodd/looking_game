extends Node2D
@onready var right_head = $"Right Head"

var actionable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_x = 0
	var direction_y = 0
	
	# main.gd makes chars inactionable when countdown timer goes off
	if actionable:
		right_head.animation = "center"
	if Input.is_action_pressed("R_L") and actionable:
		right_head.animation = "left" 
		direction_x -= 1
	if Input.is_action_pressed("R_R") and actionable:
		right_head.animation = "right"
		direction_x += 1
	if Input.is_action_pressed("R_U") and actionable:
		right_head.animation = "up" 
		direction_y -= 1
	if Input.is_action_pressed("R_D") and actionable:
		right_head.animation = "down" 
		direction_y += 1

