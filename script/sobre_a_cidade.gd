extends Control

@onready var sobre_a_cidade ={
	"São Luís": [ 
		"A nossa capital! Famosa por ser a única\n capital brasileira fundada por franceses,\n tem esse nome em homenagem ao rei da época da sua criação, Luís XIII.\n Foi, por muito tempo, um ponto importante para a França, pois era considerada estratégica para fortalecer a economia mercantilista presente no território francês."
	
	],
	"Imperatriz": [
		
		"Imperatriz: situada no sudoeste maranhense, tem mais de 250 mil habitantes. Além de ser a segunda cidade mais populosa do estado, tem fatos bem interessantes ocorridos em seu território. Como a sua grande participação no garimpo de Serra Pelada. Sua economia diversificada, principalmente entre as décadas de 50 a 90, onde se teve um amplo investimento em arroz, onde se criou um corredor agrícola com recorde de produção de arroz, em madeira, a qual foi responsável por um grande aumento no número de empregos. E, durante o ciclo do ouro, onde Imperatriz se torna uma grande abastecedor do garimpo de Serra Pelada. Outro ponto importante há se mencionar é que muito do sucesso de Imperatriz, com sua grande população e boa economia, é proveniente da criação da estrada Belém-Brasília, a qual influenciou bastante o crescimento de várias cidades, como o caso de Imperatriz. "
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
	"Sabia que Santa Inês, além de ter sido fundada em 1887 por senhores de escravos,\n era o principal povoado do município de Pindaré-Mirim?\n Foi desmembrado de seu vizinho apenas em 1967. Em seu início já foi chamada de Aldeia dos Pretos,\n Ponta da Linha, Conceição. Sendo, finalmente denominada de Santa Inês,\n em razão do voto de uma senhora pelo sucesso que obteve em um parto de risco.",
	
	],
	"Viana": [
		"Você sabia que Viana é a quarta cidade masi antiga do maranhão,\n tendo sua povoação iniciada em 1709 pelos missionários da Companhia de Jesus?\n Essa povoação se iniciou no território que, nessa época,\n se chamava aldeia Guajajara de Maracu.",
	
	],
	
}

# Called when the node enters the scene tree for the first time.
func _ready():
	$botao1/Label.text = "Voltar"
	$botao1/Label.modulate = Color(0,0,0,1)
	$Sprite2D/Label.text = sobre_a_cidade[Global.cidade][0] 
	$Sprite2D/Label.modulate = Color(0,0,0,1)
	$Sprite2D/cazumba.scale = Vector2(0.9,0.9)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var soma = 0
func _process(delta):
	soma = soma + 0.5
	$Sprite2D/Label.visible_characters = soma
	pass


func _on_botao_1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.

var move = true
var cont = 0

func _on_timer_timeout():
	if cont <6:
		if move == true:
			$Sprite2D/cazumba.skew = 0.05
			move = false
			cont = cont +1
		else:
			$Sprite2D/cazumba.skew = -0.02
			move = true
			cont = cont +1
	pass # Replace with function body.
