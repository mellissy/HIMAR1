extends Control

const sqlite = preload("res://addons/godot-sqlite/gdsqlite.gdextension")
var db
var db_name = "res://SQLite/database.db"

@onready var cidades ={
	"São Luís": [ "res://tudo/imagens/mapa/telaSaoLuis2.jpg" ],
	"Grajaú": ["res://tudo/imagens/mapa/mapa_grajau.jpg"  ],
	"Imperatriz": [ "res://tudo/imagens/mapa/mapa_imperatriz.jpeg"],
	"Alcântara": [ "res://tudo/imagens/mapa/telaAlcantarap.jpg" ],
	"Pindaré": [ "res://tudo/imagens/mapa/telaPindare2.jpg" ],
	"Carutapera": ["res://tudo/imagens/mapa/Carutapera.jpg"  ],
	"Guimarães": [ "res://tudo/imagens/mapa/telaguimaraes 1.jpg" ],
	"Buriticupu": [ "res://tudo/imagens/mapa/buriticupuP.jpg" ],
	"Barreirinhas": [ "res://tudo/imagens/mapa/telaBarerinhas.jpg" ],
	"Caxias": [ "res://tudo/imagens/mapa/telaMapaCaxiasMa2.jpg" ],
	"Codó": [ "res://tudo/imagens/mapa/codo1.jpg" ],
	"Carolina": [ "res://tudo/imagens/mapa/carolina1.jpg"  ],
	"Santa Inês": [ "res://tudo/imagens/mapa/santaines.jpg"  ],
	"Viana": [  "res://tudo/imagens/mapa/Viana.jpg" ],
	}
	
@onready var penas ={
	"pena":[
	"res://tudo/imagens/sino_azul/sino1azull.png",
	"res://tudo/imagens/sino_azul/sino2azull.png",
	"res://tudo/imagens/sino_azul/sino3azull.png",
	"res://tudo/imagens/sino_azul/sino4azull.png",
	"res://tudo/imagens/sino_azul/sino5azull.png",
	"res://tudo/imagens/sino_azul/sino6azull.png",
	"res://tudo/imagens/sino_azul/sino7azull.png",
	"res://tudo/imagens/sino_azul/sino8azull.png",
	"res://tudo/imagens/sino_azul/sino9azull.png",
	"res://tudo/imagens/sino_azul/sino10azull.png"
	]
} 

@onready var position_b = {
	"São Luís": [Vector2(110,160),Vector2(125,250),Vector2(230,310)  ],
	"Grajaú": [ Vector2(100,135),Vector2(200,275),Vector2(20,360) ],
	"Imperatriz": [Vector2(190,110),Vector2(50,200),Vector2(200,275)  ],
	"Alcântara": [Vector2(215,150),Vector2(80,215),Vector2(50,330) ],
	"Pindaré": [ Vector2(200,160),Vector2(80,190),Vector2(45,280)],
	"Carutapera": [Vector2(115,170),Vector2(130,260),Vector2(110,400) ],
	"Guimarães": [ Vector2(190,130),Vector2(75,190),Vector2(150,275)],
	"Buriticupu": [ Vector2(115,150),Vector2(160,290),Vector2(100,420)],
	"Barreirinhas": [  Vector2(150,135),Vector2(230,240),Vector2(50,350) ],
	"Caxias": [ Vector2(180,190),Vector2(30,270),Vector2(220,275) ],
	"Codó": [ Vector2(155,220),Vector2(65,250),Vector2(120,365) ],
	"Carolina": [Vector2(30,165),Vector2(165,210),Vector2(100,360)  ],
	"Santa Inês": [Vector2(240,120),Vector2(200,260),Vector2(60,320)  ],
	"Viana": [ Vector2(30,250),Vector2(230,290),Vector2(160,370) ],
	}

@onready var size_b ={
	"São Luís": [ Vector2(160,60),Vector2(60,70),Vector2(110,95) ],
	"Grajaú": [ Vector2(80,140),Vector2(140,100),Vector2(125,110) ],
	"Imperatriz": [ Vector2(80,110),Vector2(115,100),Vector2(125,110) ],
	"Alcântara": [Vector2(710,50),Vector2(135,60),Vector2(70,80) ],
	"Pindaré": [Vector2(70,60),Vector2(65,70),Vector2(110,60) ],
	"Carutapera": [Vector2(80,60),Vector2(60,100),Vector2(60,60) ],
	"Guimarães": [Vector2(65,60),Vector2(85,80),Vector2(40,60) ],
	"Buriticupu": [Vector2(80,60),Vector2(80,80),Vector2(65,55)  ],
	"Barreirinhas": [ Vector2(70,100),Vector2(80,90),Vector2(90,80) ],
	"Caxias": [Vector2(100,60),Vector2(80,70),Vector2(65,60)  ],
	"Codó": [ Vector2(80,90),Vector2(60,100),Vector2(60,60) ],
	"Carolina": [ Vector2(80,60),Vector2(60,120),Vector2(60,80) ],
	"Santa Inês": [ Vector2(80,60),Vector2(40,100),Vector2(70,80) ],
	"Viana": [ Vector2(80,60),Vector2(70,70),Vector2(65,60) ],
	}
@onready var moita = {
	"São Luís":  [Vector2(190,290)],
	"Grajaú":  [Vector2(160,360)],
	"Imperatriz":  [Vector2(230,270)],
	"Alcântara":  [Vector2(75,330)],
	"Pindaré": [Vector2(123,280)],
	"Carutapera": [Vector2(225,250)],
	"Guimarães":  [Vector2(100,300)],
	"Buriticupu": [Vector2(160,430)],
	"Barreirinhas":  [Vector2(200,408)],
	"Caxias":  [Vector2(145,300)],
	"Codó":  [Vector2(180,350)],
	"Carolina":  [Vector2(100,290)],
	"Santa Inês":  [Vector2(230,210)],
	"Viana":  [Vector2(146,338)],
}

var current = ""
var num1 
var num2 
var pontos = Global.pontos
func _ready():
	
<<<<<<< Updated upstream
=======
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	
>>>>>>> Stashed changes
	current =Global.cidade
	num1 = Global.botao
	num2 =Global.pena
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "CAZUMBAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text = "VOLTAR"
	$botao2/Label.modulate = Color(0,0,0,1)
	$estamos_em.modulate = Color(0,0,0,1)
	
	$penas.texture = load(penas["pena"][num2])
	
	$Sprite2D.texture = load(cidades[Global.cidade][0])
	$estamos_em.text = " Você está em " + Global.cidade +"!"
	
	$dica1.position = position_b[Global.cidade][0]
	$dica2.position = position_b[Global.cidade][1]
	$dica3.position = position_b[Global.cidade][2]
	
	$dica1.size = size_b[Global.cidade][0]
	$dica2.size = size_b[Global.cidade][1]
	$dica3.size = size_b[Global.cidade][2]
	$moita.position = moita[Global.cidade][0]
	pontuacao()
	print(Global.nome)
	print(Global.pontos)
	pass

	
	
func moveu(cenaout, cenain):
	db.query_with_bindings("select * from infojogador where status = '1';")
	var player = db.query_result
	db.query_with_bindings("select pont from pontos where cenaout = ? and cenain = ?;", [cenaout, cenain])
	var incremento = db.query_result
	db.query_with_bindings("""update infojogador set score = ? where
	 	id = ?;""", [player[0].score+incremento[0].pont, player[0].id])
	db.close()
	
func _on_botao2_pressed():
	get_tree().change_scene_to_file("res://cenas/certeza.tscn"  )
	
	pass # Replace with function body.

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/CAZUMBAR.tscn" )
	
	pass # Replace with function body.

func _on_dica1_pressed():
	Global.botao = 0
	#write(num1 + ":" + current + ";" + num2)
	if current == "Alcântara" :
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica2_pressed():
	Global.botao = 1
	#write(num1 + ":" + current + ";" + num2)
	if Global.cidade == "Alcântara" or (Global.cidade == "Codó" and Global.botao == 1):
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica3_pressed():
	Global.botao = 2
	#write(num1 + ":" + current + ";" + num2)
	if current == "Alcântara" :
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.


func _on_voltar_cidade_pressed():
	
	pass # Replace with function body.


func _on_moita_pressed():
	get_tree().change_scene_to_file("res://cenas/sobre_a_cidade.tscn" )
	pass # Replace with function body.

var num=0
func _on_timer_timeout():
	if num%2==0:
		$moita.flip_h = true
	else: 
		$moita.flip_h = false
	num= num+1
	pass # Replace with function body.

func pontuacao():
	print(Global.cidade)
	if Global.cidade == ("São Luís") or("Grajaú") or ("Imperatriz") or ("Pindaré") or ("Barreirinhas") or ("Codó")or ("Alcântara"):
		Global.pontos = pontos + 100
	elif Global.cidade ==   ("Caxias") or ("Carolina") or ("Santa Inês") or ("Viana")or ("Carutapera") or("Guimarães")or("Buriticupu"): 
		Global.pontos = pontos - 70
	else: 
		Global.pontos = pontos- 70
		
		
