extends Node

var cidade = "São Luís"
var outra_cidade = "São Luís"
var pena = 0
var botao = 0
var som = true
var cont = 1
var anterior = true
var cidades_certas = " Codó - Barreirinhas - Alcântara - Pindaré - Grajaú -
 Imperatriz - São Luís "
var cidades_cetas_novas = " Barra do Corda - Bacabal - 
Paço do Lumiar - Timon - Balsas - Pinheiro - São José de Ribamar - 
Itapecuru - Açailândia - Godofredo Viana - Luís Domingues "
var caminho = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var button = true

# -> São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara (Reliquia 1)-> Godofredo Viana -> Bacabal 
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Açailândia (Reliquia 2)

#[]
#[false, false, false, false, false, false, false, false, false, false, false, false, false false, false, false, false]

var nome = " "
var pontos = 0.0
#var count_jogador
var i = 0
var vetorNomes=["", "", "", "", "", "", "", "", "", ""]
var vetorOndeParou=["", "", "", "", "", "", "", "", "", ""]
var vetorPontos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var vetVidas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

func SalvarDados():
	Global.vetorNomes[Global.i] = Global.nome
	Global.vetorOndeParou[Global.i] = Global.cidade
	Global.vetorPontos[Global.i] = Global.pontos
	Global.vetVidas[Global.i] =Global.pena

