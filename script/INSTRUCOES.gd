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
	
	$RichTextLabel.text = "- Para coletar as pistas e encontrar a relíquia roubada, você irá visitar um cenário. Em cada cenário existem 3 pistas  em  pontos   distintos   da    tela.
- As   pistas   serão   fornecidas   por personagens  que estão  localizados nos cenários. Preste muita  atenção nas dicas dadas  pelos personagens pois elas lhe  encaminharão  para  o próximo destino  em que o  suspeito do roubo viajou. 
- Toda vez  que  você estiver  em  um cenário,  terá a   opção  de evocar  o Cazumba  para fazer  sua  viagem  no tempo, não precisa  necessariamente coletar  todas  as  pistas do  cenário, basta  tocar na  opção  “CAZUMBAR”.
- No  comando   viajar,  ele terá  três opções  de  destino que  poderão ser padronizadas   em   data   ou   locais.
- O       Cazumba possui      uma quantidade     limitada  de    energia, portanto,  você terá apenas algumas viagens     no   tempo     disponíveis. Assim,  se   errar   muitas   vezes as opções  de  lugares/datas  sugeridos,o suspeito irá escapar e perderemos definitivamente a relíquia.
- Seguindo  corretamente  as  dicas você    encontrará   o   suspeito   e recuperar a relíquia.
- Siga     corretamente    as     pistas,  pesquise, pergunte, mas não  deixe de   recuperar  a relíquia roubada, o equilíbrio  das  forças no  Maranhão depende de você. Boa sorte  na sua aventura!
"
	pass

func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
