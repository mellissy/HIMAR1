extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.som :
		$AudioStreamPlayer.play()
	if Global.som == false:
		$AudioStreamPlayer.stop()
	$Label.modulate = Color(0,0,0,1)
	$Label.text= " Você quer voltar para onde?"
	$cidade_antiga/Label.modulate = Color(0,0,0,1)
	$cidade_antiga/Label.text= "Cidade anterior"
	$cidade_atual/Label.modulate = Color(0,0,0,1)
	$cidade_atual/Label.text= "Cidade atual"
	$menu/Label.text = "Menu"
	$menu/Label.modulate = Color(0,0,0,1)
	
	pass # Replace with function body.

func _process(delta):
	
	pass
	
func _on_cidade_antiga_pressed():
	Musica.som_botao()
	f_caminho()
	if Global.anterior == false:
		Global.cidade = Global.outra_cidade
		Global.anterior = true
		Global.pontos = Global.pontos - 100
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
		
	pass # Replace with function body.


func _on_cidade_atual_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func _on_menu_pressed():
	Musica.som_botao()
	Global.SalvarDados()
	
	get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
	pass # Replace with function body.
	
	
# -> São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara (Reliquia 1)-> Godofredo Viana -> Bacabal 
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Açailândia (Reliquia 2)
	
	
func f_caminho():
	print("antes da funcao de controle " + str(Global.caminho))
	if Global.outra_cidade== "São Luís" and Global.caminho[0]==0:
		Global.caminho[0]=1
	elif Global.outra_cidade== "Imperatriz" and Global.caminho[1]==0:
		Global.caminho[1]=1
	elif Global.outra_cidade== "Grajaú" and Global.caminho[2]==0:
		Global.caminho[2]=1
	elif Global.outra_cidade== "Pindaré" and Global.caminho[3]==0:
		Global.caminho[3]=1
	elif Global.outra_cidade== "Codó" and Global.caminho[4]==0:
		Global.caminho[4]=1
	elif Global.outra_cidade== "Barreirinhas" and Global.caminho[5]==0:
		Global.caminho[5]=1
	elif Global.outra_cidade== "Alcântara" and Global.caminho[6]==0:
		Global.caminho[6]=1
	elif Global.outra_cidade== "Godofredo Viana" and Global.caminho[7]==0:
		Global.caminho[7]=1
	elif Global.outra_cidade== "Bacabal" and Global.caminho[8]==0:
		Global.caminho[8]=1
	elif Global.outra_cidade== "Pinheiro" and Global.caminho[9]==0:
		Global.caminho[9]=1
	elif Global.outra_cidade== "Timon" and Global.caminho[10]==0:
		Global.caminho[10]=1
	elif Global.outra_cidade== "Barra do Corda" and Global.caminho[11]==0:
		Global.caminho[11]=1
	elif Global.outra_cidade== "São José de Ribamar" and Global.caminho[12]==0:
		Global.caminho[12]=1
	elif Global.outra_cidade== "Luís Domingues" and Global.caminho[13]==0:
		Global.caminho[13]=1
	elif Global.outra_cidade== "Paço do Lumiar" and Global.caminho[14]==0:
		Global.caminho[14]=1
	elif Global.outra_cidade== "Balsas" and Global.caminho[15]==0:
		Global.caminho[15]=1
	elif Global.outra_cidade== "Itapecuru" and Global.caminho[16]==0:
		Global.caminho[16]=1
	elif Global.outra_cidade== "Açailândia" and Global.caminho[17]==0:
		Global.caminho[17]=1
	print("depois da funcao de controle "+ str(Global.caminho))
	
	
	pass

