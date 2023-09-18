extends Control


func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao2/Label.text ="INSTRUÇÕES"
	$botao2/Label.modulate=Color(0,0,0,1)
	$botao1/Label.text="VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$RichTextLabel.modulate = Color(0,0,0,1)
	
	pass

func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
