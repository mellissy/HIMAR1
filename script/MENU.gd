extends Control


func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
		
	$botao1/Label.text= "COMEÇAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text= "OPÇÕES"
	$botao2/Label.modulate = Color(0,0,0,1)
	$botao3/Label.text= "RANKING"
	$botao3/Label.modulate = Color(0,0,0,1)
	$botao4/Label.text= "INSTRUÇÕES"
	$botao4/Label.modulate = Color(0,0,0,1)
	for i in range(0,5):
		print(Global.vetorNomes[i])
		print(Global.vetorPontos[i])
	
	pass

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn"  )
	pass # Replace with function body.
#c

func _on_botao2_pressed():
	get_tree().change_scene_to_file( "res://cenas/OPCOES.tscn" )
	
	pass # Replace with function body.


func _on_botao3_pressed():
	get_tree().change_scene_to_file("res://cenas/RANKING.tscn"  )
	pass # Replace with function body.


func _on_botao4_pressed():
	get_tree().change_scene_to_file("res://cenas/INSTRUCOES.tscn"  )
	pass # Replace with function body.

