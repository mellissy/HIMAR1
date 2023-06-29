extends Control


func _ready():
	$AudioStreamPlayer2D.play(2)
	$nome.text = Global.nome
	$nome.modulate = Color(0,0,0,1)
	var pontos = str(Global.pontos)
	$pontos.text = pontos
	$pontos.modulate = Color(0,0,0,1)
	pass


func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
