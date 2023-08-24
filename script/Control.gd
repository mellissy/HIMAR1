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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	
	
var city = Global.outra_cidade

func _on_cidade_antiga_pressed():
	if Global.anterior == false:
		Global.cidade = city
		Global.anterior = true
		Global.pontos = Global.pontos - 100
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
		
	pass # Replace with function body.


func _on_cidade_atual_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func _on_menu_pressed():
	
	
	Global.vetorNomes[Global.i] = Global.nome 
	Global.vetorPontos[Global.i] = Global.pontos 
	Global.i = Global.i +1
	#Global.vetorNomes[Global.i] = Global.nome
	#Global.vetorPontos[Global.i] = Global.pontos
	#Global.i = Global.i +1
	get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
	pass # Replace with function body.
