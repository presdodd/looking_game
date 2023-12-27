extends Node2D
@onready var right_head = $"Right Head"

var actionable = true
var animationLabel = "center"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# main.gd makes chars inactionable when countdown timer goes off
	if actionable:
		animationLabel = "center"
	if Input.is_action_pressed("R_L") and actionable:
		animationLabel = "left" 
	if Input.is_action_pressed("R_R") and actionable:
		animationLabel = "right"
	if Input.is_action_pressed("R_U") and actionable:
		animationLabel = "up" 
	if Input.is_action_pressed("R_D") and actionable:
		animationLabel = "down" 
		
	right_head.animation = animationLabel

