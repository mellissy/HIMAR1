extends Control

const sqlite = preload("res://addons/godot-sqlite/gdsqlite.gdextension")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
		
	
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	db.query("select * from infojogador order by score desc, nome;")
	print(db.query_result)
	
	var players = db.query_result
	
	var ranking_nome = " "
	var ranking_pontos = " "
	#var pontos
	
	var n =Global.vetorNomes.find("")
	for i in range(0, n):
		ranking_nome +=" \n" + Global.vetorNomes[i]
		ranking_pontos +=" \n" + str(Global.vetorPontos[i])
		
		$nome.text = ranking_nome
		$pontos.text = ranking_pontos
		
		$nome.modulate = Color(0,0,0,1)
		$pontos.text = ranking_pontos
		$pontos.modulate = Color(0,0,0,1)
	pass


func _on_voltar_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
