extends Control


@onready var path = {
	"São Luís": ["Imperatriz", "Barreirinhas", "Codó"],
	"Imperatriz": ["Buriticupu", "Grajaú", "Buriticupu"],
	"Grajaú": ["Santa Inês", "Pindaré", "Carolina"],
	"Carutapera": ["São Luís", "Guimarães", "Buriticupu"],
	"Pindaré": ["Carolina", "Viana", "Codó"],
	"Alcântara": ["Santa Inês", "Godofredo Viana", "Codó"],
	"Guimarães": ["Caxias", "Buriticupu", "São Luís"],
	"Buriticupu": ["Viana", "Caxias", "Grajaú"],
	"Caxias": ["Carolina", "Imperatriz", "Santa Inês"],
	"Carolina": ["São Luís", "Caxias", "Pindaré"],
	"Barreirinhas": ["Alcântara", "Viana", "Caxias"],
	"Codó": ["Guimarães", "Buriticupu", "Barreirinhas"],
	"Santa Inês": ["Imperatriz", "Guimarães", "Carutapera"],
	"Viana": ["São Luís", "Imperatriz", "Caxias"],
	# -> São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara (Reliquia 1) -> Godofredo Viana -> Bacabal
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Acailandia (Reliquia 2)


	###############################################
	"Barra do Corda": ["Luís Domingues", "Godofredo Viana", "São José de Ribamar"],
	"Bacabal": ["Açailândia", "Itapecuru", "Pinheiro"],
	"Paço do Lumiar": ["Pinheiro", "Balsas", "Timon"],
	"Timon": ["Bacabal", "Barra do Corda", "São José de Ribamar"],
	"Balsas": ["Bacabal", "Luís Domingues", "Itapecuru"],
	"Pinheiro": ["Timon", "Itapecuru", "Balsas"],
	"São José de Ribamar": ["Açailândia", "Pinheiro", "Luís Domingues"],
	"Itapecuru": ["Pinheiro", "Bacabal", "Açailândia"],
	"Açailândia": ["Timon", "Itapecuru", "Balsas"],
	"Godofredo Viana": ["São José de Ribamar", "Paço do Lumiar", "Bacabal"],
	"Luís Domingues":["São Luís", "Godofredo Viana", "Paço do Lumiar"],
	
}
var current

func _ready():
	if Global.som :
		$AudioStreamPlayer2D.play(2)
	if Global.som == false:
		$AudioStreamPlayer2D.stop()
	$botao1/Label.text = "VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$Label.modulate = Color(0,0,0,1)

	
	current = Global.cidade
	
	$Label.text = "Estamos em "+ current + "\n Vamos para onde?"
	$botao2/Label.text = (path[current][0])
	$botao2/Label.modulate = Color(0,0,0,1)
	$botao3/Label.text = (path[current][1])
	$botao3/Label.modulate = Color(0,0,0,1)
	$botao4/Label.text = (path[current][2])
	$botao4/Label.modulate = Color(0,0,0,1)
	
	pass
	var cidade_mais_antiga

func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn"  )
	pass # Replace with function body.
	
func _on_botao2_pressed():
	#caminho_certo()
	Musica.som_botao()
	
	Global.outra_cidade = current
	Global.cidade = path[current][0]
	Global.anterior = false
	caminho_certo()
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao3_pressed():
	#caminho_certo()
	Musica.som_botao()
	Global.outra_cidade = current
	Global.cidade = path[current][1]
	Global.anterior = false
	caminho_certo()
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.

func _on_botao4_pressed():
	#caminho_certo()
	Musica.som_botao()
	Global.outra_cidade = current
	Global.cidade = path[current][2]
	Global.anterior = false
	caminho_certo()
	get_tree().change_scene_to_file("res://cenas/DANCA.tscn"  )
	pass # Replace with function body.
	
	
	
"""func caminho_certo():
	
	if Global.cidade== "São Luís":
		Global.caminho[0]=1
	elif Global.cidade== "Imperatriz":
		Global.caminho[1]=1
	elif Global.cidade== "Grajaú":
		Global.caminho[2]=1
	elif Global.cidade== "Pindaré":
		Global.caminho[3]=1
	elif Global.cidade== "Codó":
		Global.caminho[4]=1
	elif Global.cidade== "Barreirinhas":
		Global.caminho[5]=1
	elif Global.cidade== "Alcântara":
		Global.caminho[6]=1
		
	print(Global.caminho)
	
	pass"""
	
func caminho_certo():
	print ("antes  da funcao " + str(Global.caminho))
	
	if Global.cidade== "São Luís" and Global.outra_cidade == "São Luís" :
		Global.caminho[0]=1
	elif Global.cidade== "Imperatriz" and Global.outra_cidade == "São Luís":
		Global.caminho[1]=1
	elif Global.cidade== "Grajaú" and Global.outra_cidade == "Imperatriz":
		Global.caminho[2]=1
	elif Global.cidade== "Pindaré" and Global.outra_cidade == "Grajaú":
		Global.caminho[3]=1
	elif Global.cidade== "Codó" and Global.outra_cidade == "Pindaré":
		Global.caminho[4]=1
	elif Global.cidade== "Barreirinhas" and Global.outra_cidade == "Codó":
		Global.caminho[5]=1
	elif Global.cidade== "Alcântara" and Global.outra_cidade == "Barreirinhas":
		Global.caminho[6]=1
	elif Global.cidade== "Godofredo Viana" and Global.outra_cidade == "Alcântara":#  and Global.outra_cidade == "Alcântara":
		Global.caminho[7]=1
	elif Global.cidade== "Bacabal" and Global.outra_cidade == "Godofredo Viana":# and Global.outra_cidade == "Godofredo Viana":#==
		Global.caminho[8]=1
	elif Global.cidade== "Pinheiro" and Global.outra_cidade == "Bacabal":
		Global.caminho[9]=1
	elif Global.cidade== "Timon" and Global.outra_cidade == "Pinheiro":
		Global.caminho[10]=1
	elif Global.cidade== "Barra do Corda" and Global.outra_cidade == "Timon":
		Global.caminho[11]=1
	elif Global.cidade== "São José de Ribamar" and Global.outra_cidade == "Barra do Corda":
		Global.caminho[12]=1
	elif Global.cidade== "Luís Domingues" and Global.outra_cidade == "São José de Ribamar":
		Global.caminho[13]=1
	elif Global.cidade== "Paço do Lumiar" and Global.outra_cidade == "Luís Domingues":
		Global.caminho[14]=1
	elif Global.cidade== "Balsas" and Global.outra_cidade == "Paço do Lumiar":
		Global.caminho[15]=1
	elif Global.cidade== "Itapecuru" and Global.outra_cidade == "Balsas":
		Global.caminho[16]=1
	elif Global.cidade== "Açailândia" and Global.outra_cidade == "Itapecuru":
		Global.caminho[17]=1
	
	print ("depois  da funcao " + str(Global.caminho))
	#print(Global.caminho)
	
	pass
	
	
	
	
	
	
