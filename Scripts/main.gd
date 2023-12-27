extends Node

var countdownNum = 5
@onready var countdown_label = $"UI/Countdown Label"
@onready var left_character = $"Left Character"
@onready var right_character = $"Right Character"

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
		left_character.actionable = false
		right_character.actionable = false
	countdown_label.text = str(countdownNum)

func _on_round_timer_timeout():
	left_character.actionable = true
	right_character.actionable = true
	countdownNum = 5
	countdown_label.text = str(countdownNum)
	
