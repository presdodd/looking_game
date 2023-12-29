extends Node

var countdownNum = 5
@onready var countdown_label = $"UI/Countdown Label"
@onready var left_character = $"Left Character"
@onready var right_character = $"Right Character"
@onready var countdown_timer = $"Countdown Timer"
@onready var round_timer = $"Round Timer"
@onready var left_score_label = $UI/LeftScore
@onready var right_score_label = $UI/RightScore


# 0 is left character 1 is right character
# should refactor later
var leader = 1
var left_score = 0
var right_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_countdown_timer_timeout():
	if countdownNum > 0:
		countdownNum -= 1
	else:
		countdown_timer.stop()
		round_timer.start()
		left_character.actionable = false
		right_character.actionable = false
		# Both are looking the same way
		if left_character.animationLabel == right_character.animationLabel:
			winning_round()
		else:
			losing_round()
	countdown_label.text = str(countdownNum)
	

func _on_round_timer_timeout():
	countdown_timer.start()
	left_character.actionable = true
	right_character.actionable = true
	countdownNum = 5
	countdown_label.text = str(countdownNum)


func winning_round():
	if leader == 0:
		left_score += 1
		left_score_label.text = "Score: %s" % left_score
	else:
		right_score += 1
		right_score_label.text = "Score: %s" % right_score


func losing_round():
	# change who is leader
	if leader == 1:
		$"Right Character/LeaderParticles".emitting = false
		$"Left Character/LeaderParticles".emitting = true
		leader = 0
	elif leader == 0:
		$"Left Character/LeaderParticles".emitting = false
		$"Right Character/LeaderParticles".emitting = true
		leader = 1

