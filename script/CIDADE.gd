extends Control

# -> São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara (Reliquia 1) -> Godofredo Viana -> Bacabal 
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Acailandia (Reliquia 2)


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
	############################################
	"Barra do Corda": ["res://tudo/imagens/mapa/cenario_novo/Barra_do_corda.jpg" ],#f
	"Bacabal": [ "res://tudo/imagens/mapa/cenario_novo/bacabal.jpg" ],#f
	"Paço do Lumiar": ["res://tudo/imagens/mapa/cenario_novo/Paco_do_Lumiar.jpg" ], #f
	"Timon": [ "res://tudo/imagens/mapa/cenario_novo/Timon.jpg"],#f
	"Balsas": ["res://tudo/imagens/mapa/lixo_mapa/balsas.jpg" ],
	"Pinheiro": ["res://tudo/imagens/mapa/cenario_novo/pinheiro.jpg" ],#f
	"São José de Ribamar": [ "res://tudo/imagens/mapa/cenario_novo/Sao_Jose_do_ribamar.jpg"],#f
	"Itapecuru": ["res://tudo/imagens/mapa/lixo_mapa/itapecuru.jpg" ],
	"Açailândia": ["res://tudo/imagens/mapa/cenario_novo/acailandia.jpg"  ],#f
	"Godofredo Viana": ["res://tudo/imagens/mapa/cenario_novo/Godofredo_Viana.jpg" ],#f
	"Luís Domingues": [ "res://tudo/imagens/mapa/cenario_novo/Luis_Domingues.jpg" ]#f
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
	"São Luís": [Vector2(110,159),Vector2(121,280),Vector2(242,345)  ],
	"Grajaú": [ Vector2(94,155),Vector2(200,300),Vector2(4,410) ],
	"Imperatriz": [Vector2(60,220),Vector2(170,130),Vector2(210,300)  ],
	"Alcântara": [Vector2(215,160),Vector2(80,225),Vector2(40,375) ],
	"Pindaré": [ Vector2(207,190),Vector2(72,217),Vector2(50,320)],
	"Carutapera": [Vector2(123,225),Vector2(127,316),Vector2(101,455) ],
	"Guimarães": [ Vector2(197,150),Vector2(90,208),Vector2(154,285)],
	"Buriticupu": [ Vector2(105,165),Vector2(163,325),Vector2(95,450)],
	"Barreirinhas": [  Vector2(155,146),Vector2(235,250),Vector2(50,390) ],
	"Caxias": [ Vector2(175,208),Vector2(32,295),Vector2(214,293) ],
	"Codó": [ Vector2(150,230),Vector2(60,303),Vector2(115,400) ],
	"Carolina": [Vector2(30,185),Vector2(165,222),Vector2(103,395)  ],
	"Santa Inês": [Vector2(235,140),Vector2(195,310),Vector2(66,360)  ],
	"Viana": [ Vector2(35,278),Vector2(161,395),Vector2(232,328) ],
	#########################################
	"Barra do Corda": [Vector2(100,252),Vector2(166,306),Vector2(223,335)  ],
	"Bacabal": [Vector2(90,300),Vector2(123,233),Vector2(245,225)  ],
	"Paço do Lumiar": [Vector2(23,250),Vector2(98,259),Vector2(216,287)  ],
	"Timon":[Vector2(87,246),Vector2(164,298),Vector2(222,338)  ],
	"Balsas":[Vector2(110,160),Vector2(125,250),Vector2(230,310)  ],
	"Pinheiro":[Vector2(228,265),Vector2(157,312),Vector2(32,390)  ],
	"São José de Ribamar": [Vector2(285,265),Vector2(82,330),Vector2(100,455)  ],
	"Itapecuru": [Vector2(110,160),Vector2(125,250),Vector2(230,310)  ],
	"Açailândia": [Vector2(250,287),Vector2(103,385),Vector2(235,395)  ],
	"Godofredo Viana": [Vector2(182,285),Vector2(132,403),Vector2(77,485)  ],
	"Luís Domingues": [Vector2(182,280),Vector2(136,352),Vector2(75,445)  ],
	}

@onready var size_b ={
	"São Luís": [ Vector2(557,72),Vector2(275,60),Vector2(347,75) ],
	"Grajaú": [ Vector2(353,135),Vector2(495,85),Vector2(547,87) ],
	"Imperatriz": [ Vector2(390,90),Vector2(495,85),Vector2(355,100) ],
	"Alcântara": [Vector2(177,55),Vector2(477,52),Vector2(227,67) ],
	"Pindaré": [Vector2(230,40),Vector2(207,60),Vector2(367,45) ],
	"Carutapera": [Vector2(233,50),Vector2(223,80),Vector2(233,62) ],
	"Guimarães": [Vector2(163,40),Vector2(227,45),Vector2(107,67) ],
	"Buriticupu": [Vector2(277,44),Vector2(253,60),Vector2(203,58)  ],
	"Barreirinhas": [ Vector2(245,100),Vector2(250,100),Vector2(343,67) ],
	"Caxias": [Vector2(353,50),Vector2(307,75),Vector2(247,67)  ],
	"Codó": [ Vector2(270,100),Vector2(260,63),Vector2(233,62) ],
	"Carolina": [ Vector2(233,50),Vector2(163,140),Vector2(203,60) ],
	"Santa Inês": [ Vector2(267,45),Vector2(143,70),Vector2(230,67) ],
	"Viana": [ Vector2(227,61),Vector2(247,60),Vector2(223,62) ],
	################################################
	"Barra do Corda":[ Vector2(150,80),Vector2(247,30),Vector2(230,50) ],
	"Bacabal": [ Vector2(343,70),Vector2(350,70),Vector2(163,105) ],
	"Paço do Lumiar": [ Vector2(127,152),Vector2(313,77),Vector2(297,62) ],
	"Timon": [ Vector2(184,85),Vector2(235,33),Vector2(180,45) ],
	"Balsas": [Vector2(100,60),Vector2(80,70),Vector2(65,60)  ],
	"Pinheiro": [Vector2(330,58),Vector2(190,64),Vector2(260,40)  ],
	"São José de Ribamar": [ Vector2(182,65),Vector2(307,38),Vector2(303,40) ],
	"Itapecuru": [ Vector2(160,60),Vector2(60,70),Vector2(110,95) ],
	"Açailândia": [ Vector2(230,50),Vector2(343,57),Vector2(297,60) ],
	"Godofredo Viana": [ Vector2(177,40),Vector2(277,40),Vector2(230,50) ],
	"Luís Domingues": [ Vector2(247,50),Vector2(253,60),Vector2(270,55) ],
	
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
	##############################
	"Barra do Corda":  [Vector2(110,345)],
	"Bacabal":  [Vector2(245,360)],
	"Paço do Lumiar":  [Vector2(120,360)],
	"Timon":  [Vector2(110,345)],
	"Balsas": [Vector2(123,280)],
	"Pinheiro": [Vector2(261,345)],
	"São José de Ribamar":  [Vector2(185,305)],
	"Itapecuru": [Vector2(160,430)],
	"Açailândia":  [Vector2(180,450)],
	"Godofredo Viana":  [Vector2(206,355)],
	"Luís Domingues":  [Vector2(217,375)],
}

func _ready():
	#var p = str(Global.caminho)
	#print("caminho da cidade é "+ p)
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	var sem_fogo = "Carolina" + Global.cidades_cetas_novas
	if Global.cidade in sem_fogo:
		$fogo.visible = false
		$fogo2.visible = false
	
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "CAZUMBAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text = "VOLTAR"
	$botao2/Label.modulate = Color(0,0,0,1)
	$estamos_em.modulate = Color(0,0,0,1)
	
	$penas.texture = load(penas["pena"][Global.pena])
	
	$Sprite2D.texture = load(cidades[Global.cidade][0])
	$estamos_em.text = " Você está em " + Global.cidade +"!"
	
	$dica1.position = position_b[Global.cidade][0]
	$dica2.position = position_b[Global.cidade][1]
	$dica3.position = position_b[Global.cidade][2]
	
	$dica1.size = size_b[Global.cidade][0]
	$dica2.size = size_b[Global.cidade][1]
	$dica3.size = size_b[Global.cidade][2]
	$moita.position = moita[Global.cidade][0]
	
	print("outra cidade "+ Global.outra_cidade)
	print(" cidade "+ Global.cidade)
	print("Dentro da cidade "+ str(Global.caminho))
	#tamanho_do_nome()
	
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
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/certeza.tscn"  )
	
	pass # Replace with function body.

func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CAZUMBAR.tscn" )
	
	pass # Replace with function body.

func _on_dica1_pressed():
	Musica.som_botao()
	Global.botao = 0
	#write(num1 + ":" + current + ";" + num2)
	if Global.cidade == "Açailândia" :
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica2_pressed():
	Global.botao = 1
	Musica.som_botao()
	#write(num1 + ":" + current + ";" + num2)
	if Global.cidade == "Açailândia" or Global.cidade == "Alcântara":
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica3_pressed():
	Global.botao = 2
	Musica.som_botao()
	#write(num1 + ":" + current + ";" + num2)
	if Global.cidade == "Açailândia" :
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	pass # Replace with function body.


func _on_voltar_cidade_pressed():
	
	pass # Replace with function body.


func _on_moita_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/sobre_a_cidade.tscn" )
	pass # Replace with function body.

var num=0
var move = true
var cont
func _on_timer_timeout():
	if num%2==0:
		$moita.flip_h = true
	else: 
		$moita.flip_h = false
	num= num+1
	#cont = cont +1
	if move == true:
		$fogo.skew = 0.1
		$fogo.position.y = $fogo.position.y -10
		$fogo2.skew = 0.1
		$fogo2.position.y = $fogo2.position.y -10
		move = false
		
	else:
		$fogo.skew = -0.2
		$fogo2.skew = -0.2
		move = true
		$fogo.position.y = $fogo.position.y +10
		$fogo2.position.y = $fogo2.position.y +10
	#if cont >4:
	#	cont =0
	
	pass # Replace with function body.
	
	
func tamanho_do_nome():
	if Global.cidade == "Paço do Lumiar":
		$estamos_em.theme_override.font_size = 20#theme_override_font_sizes/font_size = 20
		pass
	
	
	
