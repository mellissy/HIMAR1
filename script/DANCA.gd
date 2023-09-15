extends Control

func _ready():

	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	pontuacao()
	Global.pena = Global.pena-1
	
	if Global.pena<0:
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn"  )
		
	pass

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.


func _on_video_stream_player_finished():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
	

func pontuacao():
	#Global.vetVidas[Global.i] = Global.vetVidas[Global.i]  - 1
	if Global.cidade in ("São Luís"):# or("Grajaú") or ("Imperatriz") or ("Pindaré") or ("Barreirinhas") or ("Codó")or ("Alcântara"):
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Grajaú"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Imperatriz"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Pindaré"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Barreirinhas"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Codó"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Alcântara"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Carutapera"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Guimarães"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Buriticupu"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Carolina"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Viana"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Santa Inês"): 
		Global.pontos = Global.pontos - 50
	elif Global.cidade in    ("Caxias"): 
		Global.pontos = Global.pontos - 50
	#Global.vetorPontos[Global.i]= Global.pontos
