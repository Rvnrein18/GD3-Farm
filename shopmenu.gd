extends StaticBody2D

var item = 1

var item1price = 100
var item2price = 200

var item1owned = false
var item2owned = false

var price

func _ready():
	$icon.play("berryseed")
	item = 1

func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$icon.play("berryseed")
			$price.text = "100"
			if Global.coins >= item1price:
				if item1owned == false:
					$buybuttoncol.color = "3871e11c"
				else:
					$buybuttoncol.color = "38ff0000"
			else:
				$buybuttoncol.color = "38ff0000"
		if item == 2:
			$icon.play("randomseed")
			$price.text = "200"
			if Global.coins >= item2price:
				if item2owned == false:
					$buybuttoncol.color = "3871e11c"
				else:
					$buybuttoncol.color = "38ff0000"
			else:
				$buybuttoncol.color = "38ff0000"

func _on_btnleft_pressed():
	swap_item_back()

func _on_btnright_pressed():
	swap_item_foward()

func _on_buybtn_pressed():
	if item == 1:
		price = item1price
		if Global.coins >= price:
			if item1owned == false:
				buy()
	elif item == 2:
		price = item2price
		if Global.coins >= price:
			if item2owned == false:
				buy()

func swap_item_back():
	if item == 1:
		item = 2
	elif item == 2:
		item = 1

func swap_item_foward():
	if item == 2:
		item = 1
	elif item == 1:
		item = 2

func buy():
	Global.coins -= price
	if item == 1 :
		item1owned = true
	if item == 2 :
		item2owned = true

