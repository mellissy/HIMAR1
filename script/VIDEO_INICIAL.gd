extends Control

func _ready():
	Global.cidade = "Balsas"
	Global.caminho[0]=1
	Global.botao = 0
	Global.pena = 9
	Global.pontos = 0
	
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	
	var file = FileAccess.open("res://citty.txt", FileAccess.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	
	pass


func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.


func write(txt):
	
	var file = FileAccess.open("res://citty.txt", FileAccess.WRITE)
	file.store_string(txt)




func _on_video_stream_player_finished():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
