extends Control

@onready var sobre_a_cidade ={
	"São Luís": [ 
		"!"
	
	],
	"Imperatriz": [
		
		"!"
	],
	"Grajaú": [
		"!"
		
		
	],
	"Carutapera": [
		
		"!"
		
	],
	"Pindaré": [
		"!", 
	
	],
	"Alcântara": [ 
	"!"

	],
	"Guimarães": [
		"!"
	
	],
	"Buriticupu": [
		"!"
	],
	"Caxias": [
		"!",
	],
	"Carolina": [
		"!", 
	],
	"Barreirinhas": [ 
	"!"
	
	],
	"Codó": [
	
	"!",
	
	
	
	],
	"Santa Inês": [
	"!",
	
	],
	"Viana": [
		"!",
	
	],
	
}

# Called when the node enters the scene tree for the first time.
func _ready():
	$botao1/Label.text = "Voltar"
	$botao1/Label.modulate = Color(0,0,0,1)
	$Sprite2D/Label.text = sobre_a_cidade[Global.cidade][0] 
	$Sprite2D/Label.modulate = Color(0,0,0,1)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_botao_1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.
