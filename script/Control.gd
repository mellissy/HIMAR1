extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Label.modulate = Color(0,0,0,1)
	$Label.text= " Você quer voltar para onde?"
	$cidade_antiga/Label.modulate = Color(0,0,0,1)
	$cidade_antiga/Label.text= "Cidade anterior"
	$cidade_atual/Label.modulate = Color(0,0,0,1)
	$cidade_atual/Label.text= "Cidade atual"
	$menu/Label.text = "Menu"
	$menu/Label.modulate = Color(0,0,0,1)
	
	pass # Replace with function body.

func _process(delta):
	
	pass
	
func _on_cidade_antiga_pressed():
	if Global.anterior == false:
		Global.cidade = Global.outra_cidade
		Global.anterior = true
		Global.pontos = Global.pontos - 100
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
		
	pass # Replace with function body.


func _on_cidade_atual_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func _on_menu_pressed():
	Global.vetorNomes[Global.i] = Global.nome
	Global.vetorOndeParou[Global.i] = Global.cidade
	Global.vetorPontos[Global.i] = Global.pontos
	Global.vetVidas[Global.i] =Global.pena
	
	get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
	pass # Replace with function body.
