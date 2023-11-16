extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.pontos = Global.pontos + 100
	Global.SalvarDados()
	if Global.cidade == "Alcântara" and Global.outra_cidade == "Barreirinhas":
		Global.cont_reliquia = Global.cont_reliquia + 1
		Global.pena = 9
		$VideoStreamPlayer.stream = preload( "res://tudo/imagens/reliquia/video_da_primeira_reliquia_com_letra.ogv")
		$VideoStreamPlayer.play()
	elif Global.cidade == "Açailândia" and Global.outra_cidade == "Itapecuru" :
		Global.cont_reliquia = Global.cont_reliquia + 1
		$VideoStreamPlayer.stream = preload("res://tudo/imagens/reliquia/video_da_ultima_reliquia.ogv" )
		$VideoStreamPlayer.play()
		
	else:
		if Global.pena <= -1:
			$VideoStreamPlayer.stream = preload("res://tudo/Videos/CAZUMBA_danca_convertido.ogv" )
	pass # Replace with function body."""
	
func _process(delta):
	pass


func _on_botao_1_pressed():
	get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.


func _on_video_stream_player_finished():
	print(Global.cidade +" "+ Global.outra_cidade)
	if Global.cidade == "Alcântara":
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	elif Global.cidade == "Açailândia" and Global.outra_cidade == "Itapecuru" :
		Global.SalvarDados()
		get_tree().change_scene_to_file("res://cenas/creditos.tscn" )
		
	else:
		if Global.pena == -1:
			Global.SalvarDados()
			get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
			print("vc perdeu")

	pass # Replace with function body.
