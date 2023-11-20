extends Control

const sqlite = preload("res://addons/godot-sqlite/gdsqlite.gdextension")
var db
var db_name = "res://SQLite/database.db"


# São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara -> Godofredo Viana -> Bacabal (Reliquia 1)
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Acailandia (Reliquia 2)

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	pontuacao()
	Global.pena = Global.pena-1
	f_caminho()
	if Global.cidade == "São José de Ribamar" and Global.outra_cidade == "Barra do Corda":
		Global.pena = 9
		db.query("""update infojogador set penas = "9" where status = '1';""")
		db.close_db()
		print("Jogo recarregado!")
	if Global.pena<0:
		get_tree().change_scene_to_file("res://cenas/game_over.tscn" )
		
	pass

func _on_botao1_pressed():
	Musica.som_botao()
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
	elif Global.cidade in    ("Barra do Corda"): #===
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Bacabal"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Paço do Lumiar"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Timon"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Balsas"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Pinheiro"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("São José de Ribamar"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Itapecuru"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Açailândia"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Godofredo Viana"): 
		Global.pontos = Global.pontos + 100
	elif Global.cidade in    ("Luís Domingues"): 
		Global.pontos = Global.pontos + 100
	
	
	
	
	
	
	
	
func f_caminho():
	print("antes da funcao de controle " + str(Global.caminho))
	if Global.outra_cidade== "São Luís" and Global.caminho[0]==1:
		Global.caminho[0]=0
	elif Global.outra_cidade== "Imperatriz" and Global.caminho[1]==1:
		Global.caminho[1]=0
	elif Global.outra_cidade== "Grajaú" and Global.caminho[2]==1:
		Global.caminho[2]=0
	elif Global.outra_cidade== "Pindaré" and Global.caminho[3]==1:
		Global.caminho[3]=0
	elif Global.outra_cidade== "Codó" and Global.caminho[4]==1:
		Global.caminho[4]=0
	elif Global.outra_cidade== "Barreirinhas" and Global.caminho[5]==1:
		Global.caminho[5]=0
	elif Global.outra_cidade== "Alcântara" and Global.caminho[6]==1:
		Global.caminho[6]=0
	elif Global.outra_cidade== "Godofredo Viana" and Global.caminho[7]==1:
		Global.caminho[7]=0
	elif Global.outra_cidade== "Bacabal" and Global.caminho[8]==1:
		Global.caminho[8]=0
	elif Global.outra_cidade== "Pinheiro" and Global.caminho[9]==1:
		Global.caminho[9]=0
	elif Global.outra_cidade== "Timon" and Global.caminho[10]==1:
		Global.caminho[10]=0
	elif Global.outra_cidade== "Barra do Corda" and Global.caminho[11]==1:
		Global.caminho[11]=0
	elif Global.outra_cidade== "São José de Ribamar" and Global.caminho[12]==1:
		Global.caminho[12]=0
	elif Global.outra_cidade== "Luís Domingues" and Global.caminho[13]==1:
		Global.caminho[13]=0
	elif Global.outra_cidade== "Paço do Lumiar" and Global.caminho[14]==1:
		Global.caminho[14]=0
	elif Global.outra_cidade== "Balsas" and Global.caminho[15]==1:
		Global.caminho[15]=0
	elif Global.outra_cidade== "Itapecuru" and Global.caminho[16]==1:
		Global.caminho[16]=0
	elif Global.outra_cidade== "Açailândia" and Global.caminho[17]==1:
		Global.caminho[17]=0
	
	
func caminho_certo():
	#nao usado
	
	if Global.cidade== "São Luís":
		Global.caminho[0]=1
	elif Global.cidade== "Imperatriz":
		Global.caminho[1]=1
	elif Global.cidade== "Grajaú":
		Global.caminho[2]=1
	elif Global.cidade== "Pindaré":
		Global.caminho[3]=1
	elif Global.cidade== "Codó":
		Global.caminho[4]=1
	elif Global.cidade== "Barreirinhas":
		Global.caminho[5]=1
	elif Global.cidade== "Alcântara":
		Global.caminho[6]=1
	elif Global.cidade== "Godofredo Viana"  and Global.outra_cidade == "Alcântara":
		Global.caminho[7]=1
	elif Global.cidade== "Bacabal" and Global.outra_cidade == "Godofredo Viana":#==
		Global.caminho[8]=1
	elif Global.cidade== "Pinheiro":
		Global.caminho[9]=1
	elif Global.cidade== "Timon":
		Global.caminho[10]=1
	elif Global.cidade== "Barra do Corda":
		Global.caminho[11]=1
	elif Global.cidade== "São José de Ribamar":
		Global.caminho[12]=1
	elif Global.cidade== "Luís Domingues":
		Global.caminho[13]=1
	elif Global.cidade== "Paço do Lumiar":
		Global.caminho[14]=1
	elif Global.cidade== "Balsas":
		Global.caminho[15]=1
	elif Global.cidade== "Itapecuru":
		Global.caminho[16]=1
	elif Global.cidade== "Açailândia":
		Global.caminho[17]=1
	#print(Global.caminho)
	
	pass
	
	
	
	
