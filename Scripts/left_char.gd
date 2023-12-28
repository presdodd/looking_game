extends Node2D
@onready var left_head = $"LeftHead"

var actionable = true
var animationLabel = "center"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# main.gd makes chars inactionable when countdown timer goes off
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
		
	# debugging emit particles
	if Input.is_action_just_pressed("ui_accept"):
		setEmitParticles(true)
	
	left_head.animation = animationLabel
	
func setEmitParticles(boolean):
	$LeaderParticles.emitting = boolean

