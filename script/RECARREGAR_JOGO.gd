extends Control


func _ready():
	print("vidas: "+str(Global.vetVidas))
	print("vidas "+ str(Global.pena))
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text ="JOGADOR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text =" COMEÇAR"
	$botao2/Label.modulate= Color(0,0,0,1)
	$botao3/Label.text ="VOLTAR"
	$botao3/Label.modulate = Color(0,0,0,1)
	
	var nome = " "
	var n =Global.vetorNomes.find("")
	for i in range(0,n):
		$TextEdit/OptionButton.add_item(Global.vetorNomes[i])
	
	pass # Replace with function body.
	

func _process(delta):
	
	pass


func _on_botao_3_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn" )
	pass # Replace with function body.
var encontrar_jogador

func _on_botao_2_pressed():
	print(Global.pena)
	if Global.pena == -1:
		print("entrou")
		get_tree().change_scene_to_file( "res://cenas/video_da_reliquia_1.tscn")
	encontrar_jogador=Global.vetorNomes.find($TextEdit/OptionButton.text)
	Global.i = encontrar_jogador 
	Global.nome = Global.vetorNomes[Global.i]
	Global.pontos = Global.vetorPontos[Global.i]
	Global.cidade = Global.vetorOndeParou[Global.i]
	Global.pena = Global.vetVidas[Global.i]
	
	
	
	if $TextEdit/OptionButton.text != "":
		Musica.som_botao()
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.
