extends Label

var num = 5

func _on_countdown_timer_timeout():
	if num > 0:
		num -= 1
	text = str(num)
	print(num)

func _on_round_timer_timeout():
	num = 5
	text = str(num)
	
