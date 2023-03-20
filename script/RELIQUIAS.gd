extends Node2D

var current
var num2
func _ready():
	
	#var file = File.new()
	var file = FileAccess.open("res://citty.txt", FileAccess.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	current = leve[0]
	num2 = leve[1]
	
	if current == "Codó":
		$Label.text = "PARABÉNS,\nVOCÊ ENCONTROU A PRIMEIRA RELÍQUIA!"
		$botao1/Label.text =" CONTINUAR"
		$Sprite2D.texture = load("res://tudo/imagens/reliquia/reliquia_1.jpeg" )
	elif current == "Alcântara":
		$Label.text = "PARABÉNS,\nVOCÊ ENCONTROU TODAS AS RELÍQUIAS!"
		$botao1/Label.text =" CONTINUAR"
		$Sprite2D.texture = load( "res://tudo/imagens/reliquia/reliquia1.jpeg")
	else:
		if num2 == "-1":
			$Sprite2D.texture = load("res://tudo/imagens/sino_azul/sino0azul.jpg" )
			$Sprite2D.scale = Vector2(0.5,0.5)
			$Label.text = "GAME OVER"
		$botao1/Label.text =" MENU"
	$botao1/Label.modulate = Color(0,0,0,1)
	
	
	pass

func _on_botao1_pressed():
	if current == "Codó":
		get_tree().change_scene_to_file("res://cenas/DICA.tscn" )
	else:
		get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
	pass # Replace with function body.

