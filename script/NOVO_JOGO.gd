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
	var n_vetor
	n_vetor=Global.vetorNomes.find("")
	Global.i = n_vetor
	
	#print(Global.vetorNomes[Global.i])
	
	
	
	
	pass

func _insertDB():
	var name = $TextEdit.get_text().strip_edges()
	if name == "":
		
		return false
	db.query_with_bindings("select * from infojogador where nome = ?;", [name])
	var player = db.query_result
	if len(player) == 0:
		db.query_with_bindings("insert into infojogador (nome) values (?);", [name])
		db.close_db()
		db.open_db()
		db.query_with_bindings("select * from infojogador where nome = ?;", [name])
		player = db.query_result
	db.query_with_bindings("update infojogador set status = '1' where id = ?;", [player[0]["id"]])
	
	db.close_db()
	
	return true

func _on_botao3_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn" )
	pass # Replace with function body.


func _on_botao2_pressed():
	Musica.som_botao()
	for i in 6:
		Global.caminho[i]= 0
	#print(Global.caminho)
	#Global.vetorNomes[Global.i] = $TextEdit.text
	Global.nome = $TextEdit.text
	if _insertDB():
		get_tree().change_scene_to_file("res://cenas/VIDEO_INICIAL.tscn"  )
	pass # Replace with function body.
