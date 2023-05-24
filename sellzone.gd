extends StaticBody2D


func _on_Area2D_body_entered(body):
	if body.has_method("player_sell_method"):
		var carrots = Global.numofcarrots
		var onions = Global.numofonions
		var coins = Global.coins
		var berries = Global.numofberries
		
		
		
		coins += carrots * 10 
		coins += onions * 5
		coins += berries * 15
		
		carrots = 0
		onions = 0
		berries = 0
		
		Global.coins = coins 
		Global.numofcarrots = carrots
		Global.numofonions = onions
		Global.numofberries = berries
