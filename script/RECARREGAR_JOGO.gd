extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$botao1/Label.text ="JOGADOR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text =" COMEÇAR"
	$botao2/Label.modulate= Color(0,0,0,1)
	$botao3/Label.text ="VOLTAR"
	$botao3/Label.modulate = Color(0,0,0,1)
	
	var nome = " "
	
	for i in range(0,Global.i):
		nome = Global.vetorNomes[i]
		$TextEdit/OptionButton.add_item(nome)
		
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_botao_3_pressed():
	get_tree().change_scene_to_file("res://cenas/COMECAR.tscn" )
	pass # Replace with function body.


func _on_botao_2_pressed():
	if $TextEdit.text != "":
		get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.
