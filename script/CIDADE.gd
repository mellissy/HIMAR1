extends Node2D

onready var cidades ={
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
	
onready var penas ={
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

onready var position_b = {
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

onready var size_b ={
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

var current = " "
var num1 = " "
var num2 

func _ready():
	
	$botao1/Label.text = "CAZUMBAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text = "VOLTAR"
	$botao2/Label.modulate = Color(0,0,0,1)
	$estamos_em.modulate = Color(0,0,0,1)
	var file = File.new()
	file.open("res://citty.txt", File.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	current = leve[0]
	num2 = leve[1]
	var cont = int(leve[1])
	$penas.texture = load(penas["pena"][cont])
	$Sprite.texture = load(cidades[current][0])
	$estamos_em.text = " Você está em " + current +"!"
	
	$dica1.rect_position = position_b[current][0]
	$dica2.rect_position = position_b[current][1]
	$dica3.rect_position = position_b[current][2]
	
	$dica1.rect_size = size_b[current][0]
	$dica2.rect_size = size_b[current][1]
	$dica3.rect_size = size_b[current][2]
	print(info) # info[0],current;leve[1]
	pass
	
func _on_botao2_pressed():
	get_tree().change_scene("res://cenas/MENU.tscn"  )
	
	pass # Replace with function body.

func _on_botao1_pressed():
	get_tree().change_scene("res://cenas/CAZUMBAR.tscn" )
	
	pass # Replace with function body.

func _on_dica1_pressed():
	num1 = "0"
	write(num1 + ":" + current + ";" + num2)
	if current == "Alcântara" :
		get_tree().change_scene("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica2_pressed():
	num1 = "1"
	write(num1 + ":" + current + ";" + num2)
	if current == "Alcântara" or (current == "Codó" and num1 == "1"):
		get_tree().change_scene("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func _on_dica3_pressed():
	num1 = "2"
	write(num1 + ":" + current + ";" + num2)
	if current == "Alcântara" :
		get_tree().change_scene("res://cenas/RELIQUIAS.tscn" )
	else:
		get_tree().change_scene("res://cenas/DICA.tscn" )
	pass # Replace with function body.

func write(txt):
	var file = File.new()
	file.open("res://citty.txt", File.WRITE)
	file.store_string(txt)
