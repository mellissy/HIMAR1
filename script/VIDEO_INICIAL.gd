extends Node2D
onready var timer := $VideoPlayer/Timer as Timer

func _ready():
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	timer.start()
	var file = File.new()
	file.open("res://citty.txt", File.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	leve[1] = "9"
	write(info[0] + ":" + "São Luís" + ";" + leve[1])
	
	pass


func _on_botao1_pressed():
	get_tree().change_scene("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.


func write(txt):
	var file = File.new()
	file.open("res://citty.txt", File.WRITE)
	file.store_string(txt)


func _on_Timer_timeout():
	get_tree().change_scene("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
