extends Control


func _ready():
	$AudioStreamPlayer2D.play(2)
	pass


func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.
