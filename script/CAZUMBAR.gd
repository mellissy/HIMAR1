extends Node2D


@onready var path = {
	"São Luís": ["Imperatriz", "Guimarães", "Carutapera"],
	"Imperatriz": ["Viana", "Grajaú", "Buriticupu"],
	"Grajaú": ["Santa Inês", "Pindaré", "Carolina"],
	"Carutapera": ["São Luís", "Guimarães", "Buriticupu"],
	"Pindaré": ["Carolina", "Carutapera", "Codó"],
	"Alcântara": ["Santa Inês", "Viana", "Codó"],
	"Guimarães": ["Caxias", "Buriticupu", "São Luís"],
	"Buriticupu": ["Viana", "Caxias", "Grajaú"],
	"Caxias": ["Carolina", "Imperatriz", "Santa Inês"],
	"Carolina": ["São Luís", "Caxias", "Pindaré"],
	"Barreirinhas": ["Alcântara", "Viana", "Caxias"],
	"Codó": ["Guimarães", "Buriticupu", "Barreirinhas"],
	"Santa Inês": ["Imperatriz", "Guimarães", "Carutapera"],
	"Viana": ["São Luís", "Imperatriz", "Caxias"],
	
}
var current
var num1 
var num2 
func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$Label.modulate = Color(0,0,0,1)

	
	current = Global.cidade
	num1 =Global.botao
	num2 =Global.pena
	
	$Label.text = "Estamos em "+ current + "\n Vamos para onde?"
	$botao2/Label.text = (path[current][0])
	$botao2/Label.modulate = Color(0,0,0,1)
	$botao3/Label.text = (path[current][1])
	$botao3/Label.modulate = Color(0,0,0,1)
	$botao4/Label.text = (path[current][2])
	$botao4/Label.modulate = Color(0,0,0,1)
	pass

func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.

func _on_botao2_pressed():
	Global.cidade = path[current][0]
	#write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao3_pressed():
	Global.cidade = path[current][1]
	#write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao4_pressed():
	Global.cidade = path[current][2]
	#write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.
