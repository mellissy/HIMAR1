extends Node

var cidade = "São Luís"
var outra_cidade = "São Luís"
var pena = 5
var botao = 0
var som = true
var cont = 1
var cont_reliquia = 0
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
var vetorNomes=["yy", "ww", "kk", "", "", "", "", "", "", ""]
var vetorOndeParou=["sao", "", "", "", "", "", "", "", "", ""]
var cidadeAnterior=["bal", "", "", "", "", "", "", "", "", ""]
var vetorPontos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var vetVidas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

func SalvarDados():
	vetorNomes[i] = nome
	vetorOndeParou[i] = cidade
	vetorPontos[i] = pontos
	vetVidas[i] = pena
	cidadeAnterior[i] = outra_cidade
	

