extends StaticBody2D

func _ready():
	$shopmenu.visible = false
	
func _process(delta):
	if Global.weather == "rain":
		$AnimatedSprite2.visible = false
	elif Global.weather == "none":
		$AnimatedSprite2.visible = true
	if $shopmenu.item1owned == true:
		$berry_seed.visible = true 
	if $shopmenu.item2owned == true:
		#$random_seed.visible = true 
		print("randomseedpack swaping in ")

func _on_Area2D_body_entered(body):
	if body.has_method("player_shop_method"):
		$shopmenu.visible = true

func _on_Area2D_body_exited(body):
	$shopmenu.visible = false
