extends Node2D
@onready var left_head = $"Left Head"

var actionable = true
var animationLabel = "center"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if actionable:
		animationLabel = "center"
	if Input.is_action_pressed("L_L") and actionable:
		animationLabel = "left" 
	if Input.is_action_pressed("L_R") and actionable:
		animationLabel = "right"
	if Input.is_action_pressed("L_U") and actionable:
		animationLabel = "up" 
	if Input.is_action_pressed("L_D") and actionable:
		animationLabel = "down" 
	
	left_head.animation = animationLabel

