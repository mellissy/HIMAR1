extends Control

@onready var texto ={
	"São Luís": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a população com a criação da estrada Belém Brasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada. Eu não entendi foi nada.",
		"O quê? suspeito? Suspeito de quê?\n Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a década de 1980, vivia o ciclo do arroz. Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Imperatriz": [
		
		" Ho meu filho/a! \n Passou um suspeito por aqui sim!\n Ele falava alguma coisa sem sentido. Queria saber sobre um atentado contra um tal de Leão Leda.     ",
		"'Mirmã' não sei nada não! Passou um suspeito por aqui, mas dei muita atenção pra ele. Só lembro que falou alguma coisa sobre a Guerra da Leda no sertão do maranhão. Que parece, aconteceu no final do século XIX e no inicio do século XX."  ,
		"Hoo meu 'fíí'! Passou um cabôco diferente por aqui! Mas eu nem 'intendi' direito o que ele queria não. Falou umas coisas sobre uma guerra que queria a independência política do sertão do maranhão. "
	],
	"Grajaú": [
	"Um suspeito tinha me dito que um novo município estava sendo gerado a partir da cidade de monção que se chamava engenho de São Pedro de Alcântara.",
	"Sim, passou sim, ele falou que estava indo para uma cidade com um engenho que estava prestes a fechar, pois a indústria açucareira entrou em decadência.",
	"Um suspeito passou dizendo que ia presenciar a construção da  ferrovia que faz ligação ao engenho central e ao porto terminal dos canaviais."

	],
	"Carutapera": [
		"Acho que não vi nenhum suspeito por aqui.",
		"não vi nada de estranho por aqui.",
		"nenhuma pessoa suspeita passou por aqui"
	],
	"Pindaré": [
	"Um suspeito disse que iria para inauguração da primeira indústria da cidade. Ele também disse que a indústria iria se chamar de companhia manufatureira e agrícola. ",
	"Uma pessoa suspeita   tinha me dito que  depois  que o presidente Afonso Pena veio visitar o Estado foi decidido  que iriam colocar uma estação ferroviária em uma cidade da região dos cocais, ele disse que a estrada de ferro é de São Luís até Cajazeira.",
	"Uma pessoa disse para um senhor que estava indo para o leste do estado, atrás de uma cidade da umbanda. "

	],
	"Alcântara": [ 
	"!!!!  ",
	"!!!" ,
	"!!!"
	],
	"Guimarães": [
	"Sinto muito não poder lhe ajudar \n não avistei nada de estranho por aqui",
	"Não, não, \n estar tudo em paz por aqui!",
	"Não vi nada de estranho por aqui"
	],
	"Buriticupu": [
		"Suspeito? \n Não vi nenhum aqui não.",
		"Não tem nada de estranho por aqui",
		"Não passou nenhum suspeito por aqui"
	],
	"Caxias": [
		"Não vi nada de estranho por aqui ",
	"Não posso lhe ajudar, não sei de nada"  ,
	"Desculpa, mas não vi nenhum suspeito por aqui"
	],
	"Carolina": [
		"Não passou nenhum suspeito por aqui",
		"Não avistei nenhum suspeito. ",
		"Por aqui não passou ninguém estranho"
	],
	"Barreirinhas": [ 
	"Um suspeito passou dizendo que ia participar do debate contra os higiênitas para não demolirem a cidade, não entendi nada.",
	"Acho que sim, uma pessoa estranha disse que estava indo para uma cidade onde os edifícios estavam ficando arruinados e as pessoas estavam indo embora de lá.",
	"Um suspeito disse que estava a caminho da cidade que foi a maior indústria do estado, mas que está decaindo aos poucos depois da abolição da escravatura."
	],
	"Codó": [
	" Siô, uma pessoa estranho esses dias me perguntou na rua pra que rumo ficam os lençóis maranhenses. Acho que muita gente como ele tá se interessando em conhecer esse lugar, afinal, começaram a divulgar bastante as belezas naturais de lá. Ou então ele queria arrumar emprego, porque a demanda de lá deve aumentar agora com essas divulgações,",
	"Rapaz, um dia desse passou um homem perguntando por um lugar que haviam descoberto pertróleo aqui no Maranhão. Eu não me lembro direito, mas um pessoal respondeu a ele que nesse lugar tinha umas dunas de areia. Agora eu mesmo não sei onde fica isso, você sabe!?",
	"Meu fi, esses dias um rapaz me perguntou onde ficava um lugar que tinha acabado de se emancipar lá pro norte. Eu não soube respondê-lo, mas ele, convicto, disse que estava a caminho de lá"
	],
	"Santa Inês": [
		"Não, nenhum suspeito passou por aqui",
		"Oh querido/a, sinto muito \n mas não posso lhe ajudar,",
		"Suspeito? \n nããão siô, por aqui está tudo na santa paz."
	],
	"Viana": [
		"Não passou ninguém estranho",
	"Não vi ninguém suspeito por aqui"  ,
	"Não vi nada de estranho por aqui"
	],
}

@onready var tela ={
	"São Luís": [ 
		"res://tudo/imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
		"res://tudo/imagens/personagens/saoLuis/dica2_saoLuis.jpeg",
		"res://tudo/imagens/personagens/pindare/Zezinho.jpg"
	
	],
	"Imperatriz": [
		
		"res://tudo/imagens/personagens/grajau/dica3_grajau.jpeg",
		"res://tudo/imagens/personagens/imperatriz/Leia.jpg",
		"res://tudo/imagens/personagens/imperatriz/Claudinho.jpg"
	],
	"Grajaú": [
		"res://tudo/imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://tudo/imagens/personagens/grajau/dica2_grajau.jpeg", 
		"res://tudo/imagens/personagens/imperatriz/Di.jpg"
		
		
	],
	"Carutapera": [
		
		"res://tudo/imagens/personagens/pindare/Zezinho.jpg",
		"res://tudo/imagens/personagens/codo/Pedrinho.jpg",
		"res://tudo/imagens/personagens/imperatriz/Leia.jpg"
		
	],
	"Pindaré": [
		"res://tudo/imagens/personagens/pindare/Zezinho.jpg",
		"res://tudo/imagens/personagens/pindare/Pescadori2.jpg",
		"res://tudo/imagens/personagens/pindare/Amanda.jpg", 
	
	],
	"Alcântara": [ 
	"res://tudo/imagens/personagens/alcantara/Joao.jpg",
	"res://tudo/imagens/personagens/alcantara/Luizinho.jpg",
	"res://tudo/imagens/personagens/alcantara/Ruan.jpg"

	],
	"Guimarães": [
		"res://tudo/imagens/personagens/alcantara/Joao.jpg",
		"res://tudo/imagens/personagens/alcantara/Luizinho.jpg",
		"res://tudo/imagens/personagens/alcantara/Ruan.jpg"
	
	],
	"Buriticupu": [
		"res://tudo/imagens/personagens/imperatriz/Claudinho.jpg",
		"res://tudo/imagens/personagens/pindare/Zezinho.jpg",
		"res://tudo/imagens/personagens/saoLuis/Di.jpg"
	],
	"Caxias": [
		"res://tudo/imagens/personagens/saoLuis/d2_saoLuis.jpeg",
		"res://tudo/imagens/personagens/imperatriz/Claudinho.jpg",
		"res://tudo/imagens/personagens/barrerinhas/Maycon.jpg",
	],
	"Carolina": [
		"res://tudo/imagens/personagens/imperatriz/Claudinho.jpg",
		"res://tudo/imagens/personagens/barrerinhas/maria.jpg", 
		"res://tudo/imagens/personagens/codo/Cah.jpg", 
	],
	"Barreirinhas": [ 
	"res://tudo/imagens/personagens/barrerinhas/maria.jpg", 
	"res://tudo/imagens/personagens/barrerinhas/Maycon.jpg", 
	"res://tudo/imagens/personagens/barrerinhas/SeuChico.jpg"
	
	],
	"Codó": [
	
	"res://tudo/imagens/personagens/codo/Cah.jpg", 
	"res://tudo/imagens/personagens/codo/Luizinho.jpg",
	"res://tudo/imagens/personagens/codo/Gi.jpg",
	
	
	
	],
	"Santa Inês": [
	"res://tudo/imagens/personagens/codo/Gi.jpg",
	"res://tudo/imagens/personagens/grajau/d1_grajau.jpeg",
	"res://tudo/imagens/personagens/alcantara/Joao.jpg",
	
	],
	"Viana": [
		"res://tudo/imagens/personagens/alcantara/Ruan.jpg",
		"res://tudo/imagens/personagens/codo/Pedrinho.jpg",
		"res://tudo/imagens/personagens/codo/Gi.jpg",
	
	],
	
}

var current = " "
var num1 
var num2 
var num =0
func _ready():
	$botao1/Label.text = "VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text = "CAZUMBAR"
	$botao2/Label.modulate = Color(0,0,0,1)
	
	current = Global.cidade
	num1 =Global.botao
	num2 = Global.pena
	
	$Label.text = (texto[current][num1])
	$Label.modulate = Color(0,0,0,1)
	$Sprite2D.texture = load(tela[current][num1])
	
	pass
var soma = 0 

func _process(delta):
	soma = soma + 0.5
	$Label.visible_characters = soma
	
	
func _on_botao1_pressed():
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func _on_botao2_pressed():
	get_tree().change_scene_to_file("res://cenas/CAZUMBAR.tscn" )
	pass # Replace with function body.

