extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.modulate = Color(0,0,0,1)
	$Label.text= " Você quer voltar para o menu?"
	$sim/Label.modulate = Color(0,0,0,1)
	$sim/Label.text= " Sim"
	$nao/Label.modulate = Color(0,0,0,1)
	$nao/Label.text= "Não"
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_sim_pressed():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn"  )
	pass # Replace with function body.


func _on_nao_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
