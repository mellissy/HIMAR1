extends Control

const sqlite = preload("res://addons/godot-sqlite/gdsqlite.gdextension")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	db.query("update infojogador set status = '0';")
	db.close_db()
	db.open_db()
	db.query("select * from infojogador;")
	var jogadores = db.query_result
	db.close_db()
	db.open_db()
	
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
	for i in jogadores:
		$TextEdit/OptionButton.add_item(i.nome)
		
	if Global.cidade == "Açailândia" and Global.outra_cidade == "Itapecuru":
		get_tree().change_scene_to_file( "res://cenas/video_da_reliquia_1.tscn")
	
	pass # Replace with function body.
	
	
func _load():
	var name
	db.query_with_bindings("select * from infojogador where nome = ?;", [name])
	print(db.query_with)
	pass

func _process(delta):
	pass


func _on_botao_3_pressed():
	#print($TextEdit/OptionButton.text)
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn" )

	pass # Replace with function body.

var encontrar_jogador


func _on_botao_2_pressed():
	if Global.pena != -1:
		encontrar_jogador = $TextEdit/OptionButton.text
		if encontrar_jogador == "":
			return
		db.query_with_bindings("select * from infojogador where nome = ?;", [encontrar_jogador])
		var jogador = db.query_result
		db.query_with_bindings("select * from cidades where id = ?;", [jogador[0].cenain])
		var cenain = db.query_result
		db.query_with_bindings("select * from cidades where id = ?;", [jogador[0].cenaout])
		var cenaout = db.query_result
		#Global.i = encontrar_jogador 
		Global.nome = jogador[0].nome
		Global.pontos = jogador[0].score
		Global.cidade = cenain[0].nome
		Global.pena = jogador[0].penas
		Global.outra_cidade = cenaout[0].nome
		caminho_certo()
		
		db.query_with_bindings("""update infojogador set status = "1" where id = ?;""", [jogador[0].id])
	
	
	
	if Global.pena == -1:
		get_tree().change_scene_to_file( "res://cenas/video_da_reliquia_1.tscn")
	#Global.caminho[Global.i] = 1
	
	if $TextEdit/OptionButton.text != "":
		Musica.som_botao()
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func caminho_certo():
	print ("antes  da funcao " + str(Global.caminho))
	
	if Global.cidade== "São Luís" and Global.outra_cidade == "São Luís" :
		Global.caminho[0]=1
	elif Global.cidade== "Imperatriz" and Global.outra_cidade == "São Luís":
		Global.caminho[1]=1
	elif Global.cidade== "Grajaú" and Global.outra_cidade == "Imperatriz":
		Global.caminho[2]=1
	elif Global.cidade== "Pindaré" and Global.outra_cidade == "Grajaú":
		Global.caminho[3]=1
	elif Global.cidade== "Codó" and Global.outra_cidade == "Pindaré":
		Global.caminho[4]=1
	elif Global.cidade== "Barreirinhas" and Global.outra_cidade == "Codó":
		Global.caminho[5]=1
	elif Global.cidade== "Alcântara" and Global.outra_cidade == "Barreirinhas":
		Global.caminho[6]=1
	elif Global.cidade== "Godofredo Viana" and Global.outra_cidade == "Alcântara":#  and Global.outra_cidade == "Alcântara":
		Global.caminho[7]=1
	elif Global.cidade== "Bacabal" and Global.outra_cidade == "Godofredo Viana":# and Global.outra_cidade == "Godofredo Viana":#==
		Global.caminho[8]=1
	elif Global.cidade== "Pinheiro" and Global.outra_cidade == "Bacabal":
		Global.caminho[9]=1
	elif Global.cidade== "Timon" and Global.outra_cidade == "Pinheiro":
		Global.caminho[10]=1
	elif Global.cidade== "Barra do Corda" and Global.outra_cidade == "Timon":
		Global.caminho[11]=1
	elif Global.cidade== "São José de Ribamar" and Global.outra_cidade == "Barra do Corda":
		Global.caminho[12]=1
	elif Global.cidade== "Luís Domingues" and Global.outra_cidade == "São José de Ribamar":
		Global.caminho[13]=1
	elif Global.cidade== "Paço do Lumiar" and Global.outra_cidade == "Luís Domingues":
		Global.caminho[14]=1
	elif Global.cidade== "Balsas" and Global.outra_cidade == "Paço do Lumiar":
		Global.caminho[15]=1
	elif Global.cidade== "Itapecuru" and Global.outra_cidade == "Balsas":
		Global.caminho[16]=1
	elif Global.cidade== "Açailândia" and Global.outra_cidade == "Itapecuru":
		Global.caminho[17]=1
	
	print ("depois  da funcao " + str(Global.caminho))
	#print(Global.caminho)
	
	pass
