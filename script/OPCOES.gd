extends Control


func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$musica/Label.text ="MUSICA"
	$musica/Label.modulate = Color(0,0,0,1)
	$sons/Label.text =  "EFEITOS SONOROS"
	$sons/Label.modulate=Color(0,0,0,1)
	$botao1/Label.text ="VOLTAR"
	$botao1/Label.modulate=Color(0,0,0,1)
	
	
	if Global.button == false:
		$efeito.visible = false
	elif Global.button == true:
		$efeito.visible = true
		
	if Global.som == false:
		$som.visible = false
	elif Global.som == true:
		$som.visible = true
	
	
	
	pass


func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.


func _on_caixa_musica_pressed():
	
	
	
	"""if Global.som == false:
		print("dentro de falso")
		print(Global.som )
		Global.som = true
	elif Global.som == true:
		print(Global.som )
		Global.som =false
		print("dentro de verdadeiro")"""
		
	
	
	if Global.cont %2 !=0:
		Global.cont = Global.cont +1
		Global.som = false
		$som.visible = false
		$AudioStreamPlayer2D.stop()
	else:
		Global.cont = Global.cont +1
		Global.som = true
		$som.visible = true
		$AudioStreamPlayer2D.play()
	pass # Replace with function body


func _on_caixa_sons_pressed():
	
	if Global.button == false:
		Global.button = true
		$efeito.visible = true
	elif Global.button == true:
		Global.button =false
		$efeito.visible = false
		
	
	pass # Replace with function body.
