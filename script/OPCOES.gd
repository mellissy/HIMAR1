extends Node2D


func _ready():
	$musica/Label.text ="MUSICA"
	$musica/Label.modulate = Color(0,0,0,1)
	$sons/Label.text =  "EFEITOS SONOROS"
	$sons/Label.modulate=Color(0,0,0,1)
	$botao1/Label.text ="VOLTAR"
	$botao1/Label.modulate=Color(0,0,0,1)
	pass


func _on_botao1_pressed():
	get_tree().change_scene("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
