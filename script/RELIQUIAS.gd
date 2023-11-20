extends Control

const sqlite = preload("res://addons/godot-sqlite/gdsqlite.gdextension")
var db
var db_name = "res://SQLite/database.db"

var current = " "
#var num2
func _ready():
	
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	Global.pontos = Global.pontos + 100
	current = Global.cidade
	
	#num2 = Global.pena
	
	if current == "Alcântara":
		$Label.text = "PARABÉNS,\nVOCÊ ENCONTROU A PRIMEIRA RELÍQUIA!\n As suas energias foram recarregadas!"
		Global.pena = 9
		print("ok")
		#db.query_with_bindings("select * from infojogador where status = '1';",[])
		#var player = db.query_result
		#db.query_with_bindings("update infojogador set penas = ? where status = '1';", [player[0].penas+6])
		db.query("""update infojogador set penas = "9" where status = '1';""")
		db.close_db()
		$botao1/Label.text =" CONTINUAR"
		$Sprite2D.texture = load("res://tudo/imagens/reliquia/reliquia_1.jpeg" )
	elif current == "Açailândia" :
		$Label.text = "PARABÉNS,\nVOCÊ ENCONTROU TODAS AS RELÍQUIAS!"
		$botao1/Label.text =" SAIR"
		$Sprite2D.texture = load( "res://tudo/imagens/reliquia/reliquia1.jpeg")
	else:
		if Global.pena == -1:
			$Sprite2D.texture = load("res://tudo/imagens/sino_azul/sino0azul.jpg" )
			$Sprite2D.scale = Vector2(0.5,0.5)
			$Label.text = "GAME OVER"
		$botao1/Label.text =" MENU"
	$botao1/Label.modulate = Color(0,0,0,1)
	pass

func _on_botao1_pressed():
	Musica.som_botao()
	
	if current == "Alcântara":
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	else:
		Global.vetorNomes[Global.i] = Global.nome
		Global.vetorOndeParou[Global.i] = Global.cidade
		Global.vetorPontos[Global.i] = Global.pontos
		Global.vetVidas[Global.i] =Global.pena
		get_tree().change_scene_to_file(  "res://cenas/creditos.tscn" )
	pass # Replace with function body.

