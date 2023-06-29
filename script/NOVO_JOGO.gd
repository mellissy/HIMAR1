extends Control


func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$Sprite2D.scale = Vector2(0.5,0.53)
	$Sprite2D.position = Vector2(80,420)
	
	$botao1/Label.text ="JOGADOR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text =" COMEÇAR"
	$botao2/Label.modulate= Color(0,0,0,1)
	$botao3/Label.text ="VOLTAR"
	$botao3/Label.modulate = Color(0,0,0,1)
	
	pass


func _on_botao3_pressed():
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn" )
	pass # Replace with function body.


func _on_botao2_pressed():
	
	Global.nome = $TextEdit.text
	
	get_tree().change_scene_to_file("res://cenas/VIDEO_INICIAL.tscn"  )
	pass # Replace with function body.
