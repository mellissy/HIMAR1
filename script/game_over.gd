extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "Sair"
	$botao1/Label.modulate = Color(0,0,0,1)
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_botao_1_pressed():
	get_tree().change_scene_to_file("res://cenas/creditos.tscn"  )
	pass # Replace with function body.


func _on_video_stream_player_finished():
	get_tree().change_scene_to_file("res://cenas/creditos.tscn"  )
	pass # Replace with function body.
