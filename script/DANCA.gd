extends Node2D

var current 
var num1 
var num2 
func _ready():
	print(Global.cidade)
	print(Global.botao)
	print(Global.pena)
	$AudioStreamPlayer2D.play()
	$botao1/Label.text = "PULAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	
	current =Global.cidade
	
	num2 = Global.pena-1
	Global.pena= num2
	print(num2)
	
	if num2<0:
		get_tree().change_scene_to_file("res://cenas/RELIQUIAS.tscn"  )
	
	pass

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.


func _on_video_stream_player_finished():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
