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
	$AudioStreamPlayer2D.play(5)
	$botao1/Label.text = "VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$Label.modulate = Color(0,0,0,1)

	var file = FileAccess.open("res://citty.txt", FileAccess.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	current = leve[0]
	num1 =info[0]
	num2 =leve[1]
	
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
	current = path[current][0]
	write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao3_pressed():
	current = path[current][1]
	write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao4_pressed():
	current = path[current][2]
	write(num1 + ":" + current + ";" + num2)
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func write(txt):
	
	var file = FileAccess.open("res://citty.txt", FileAccess.WRITE)
	file.store_string(txt)
