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
	pass


func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.


func _on_caixa_musica_pressed():
	if Global.cont %2 !=0:
		Global.cont = Global.cont +1
		Global.som = false
		$AudioStreamPlayer2D.stop()
	else:
		Global.cont = Global.cont +1
		Global.som = true
		$AudioStreamPlayer2D.play()
	pass # Replace with function body.
