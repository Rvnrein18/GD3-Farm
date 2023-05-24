extends StaticBody2D

var state = "day"

var change_state = false

var lenght_of_day = 20
var lenght_of_night = 10

func _ready():
	if state == "day":
		$ColorRect.color.a = 0
	elif state == "night":
		$ColorRect.color.a = 160

func _on_Timer_timeout():
	if state == "day":
		state = "night"
	elif state == "night":
		state = "day"
	
	change_state = true

func _process(delta):
	if change_state == true:
		change_state = false
		if state == "day":
			change_to_day()
		elif state == "night":
			change_to_night()

func change_to_day():
	$AnimationPlayer.play("transition")
	$Timer.wait_time = lenght_of_day
	$Timer.start()

func change_to_night():
	$AnimationPlayer.play("transition2")
	$Timer.wait_time = lenght_of_night
	$Timer.start()
