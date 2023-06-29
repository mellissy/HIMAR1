extends Control

const sqlite = preload("res://addons/godot-sqlite/godot-sqlite.gd")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	$AudioStreamPlayer2D.play(2)
<<<<<<< Updated upstream
	$nome.text = Global.nome
	$nome.modulate = Color(0,0,0,1)
	var pontos = str(Global.pontos)
	$pontos.text = pontos
	$pontos.modulate = Color(0,0,0,1)
=======
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	db.query("select * from infojogador order by score desc, nome;")
	print(db.query_result)
	
	var players = db.query_result
>>>>>>> Stashed changes
	pass


func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
