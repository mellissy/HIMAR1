extends Control


func _ready():
	print("vidas: "+str(Global.vetVidas))
	print("vidas "+ str(Global.pena))
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text ="NOVO JOGO"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text ="RECARREGAR JOGO"
	$botao2/Label.modulate = Color(0,0,0,1)
	$botao3/Label.text ="VOLTAR"
	$botao3/Label.modulate = Color(0,0,0,1)
	
	Global.cont_reliquia = 0
	pass


func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/NOVO_JOGO.tscn"  )
	pass # Replace with function body.


func _on_botao3_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.


func _on_botao_2_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/recarregar_jogo.tscn"  )
	
	pass # Replace with function body.
