extends Node2D


func _ready():
	$botao1/Label.text ="NOVO JOGO"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text ="RECARREGAR JOGO"
	$botao2/Label.modulate = Color(0,0,0,1)
	$botao3/Label.text ="VOLTAR"
	$botao3/Label.modulate = Color(0,0,0,1)
	pass


func _on_botao1_pressed():
	get_tree().change_scene("res://cenas/NOVO_JOGO.tscn"  )
	pass # Replace with function body.


func _on_botao3_pressed():
	get_tree().change_scene("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
