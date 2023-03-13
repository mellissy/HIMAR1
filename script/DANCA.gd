extends Node2D
onready var timer := $VideoPlayer/Timer as Timer
var current 
var num1 
var num2 
func _ready():
	timer.start()
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	
	var file = File.new()
	file.open("res://citty.txt", File.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	current = leve[0]
	
	num2 = leve[1]
	
	var num = int(num2)-1
	if num<0:
		get_tree().change_scene("res://cenas/RELIQUIAS.tscn"  )
	num2 = str(num)
	write(info[0] + ":" + current + ";" + num2)

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
