extends Node2D


func _ready():
	$AudioStreamPlayer2D.play(2)
	$botao2/Label.text ="INSTRUÇÕES"
	$botao2/Label.modulate=Color(0,0,0,1)
	$botao1/Label.text="VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$RichTextLabel.modulate = Color(0,0,0,1)
	
	pass

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
