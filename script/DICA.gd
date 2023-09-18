extends Control

@onready var sem_dica =[ 
"Oh meu querido, nao fiquei sabendo de nenhum suspeito", 
"Desculpe-me, mas nao sei de ninguem suspeito pela região", 
"Sinto muito, mas não passou suspeito por aqui.",
"não vi nada de estranho por aqui.",
"nenhuma pessoa suspeita passou por aqui", 
"Sinto muito não poder lhe ajudar \n não avistei nada de estranho por aqui",
"Não, não, \n esta tudo em paz por aqui!",
"Não vi nada de estranho por aqui" ]



# -> São Luís -> Imperatriz -> Grajaú -> Pindaré -> Codó -> 
# -> Barreirinhas -> Alcântara (Reliquia 1) -> Godofredo Viana -> Bacabal 
# -> Pinheiro -> Timón ->São Jossé de Ribamar -> Luis Domingues
# -> Paço do Lumiar -> Balsas -> Itapecuru -> Acailandia (Reliquia 2)


 #LISTAS DE DICAS
@onready var texto ={
	"São Luís": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a população com a criação da estrada Belém Brasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada. Eu não entendi foi nada.",
		"O quê? suspeito? Suspeito de quê?\n Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a década de 1980, vivia o ciclo do arroz. Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Imperatriz": [
		
		" Ho meu filho/a! \n Passou um suspeito por aqui sim!\n Ele falava alguma coisa sem sentido. Queria saber sobre um atentado contra um tal de Leão Leda.     ",
		"'Mirmã' não sei nada não! Passou um suspeito por aqui, mas não dei muita atenção pra ele. Só lembro que falou alguma coisa sobre a Guerra da Leda no sertão do maranhão. Que parece, aconteceu no final do século XIX e no inicio do século XX."  ,
		"Hoo meu 'fíí'! Passou um cabôco diferente por aqui! Mas eu nem 'intendi' direito o que ele queria não. Falou umas coisas sobre uma guerra que queria a independência política do sertão do maranhão. "
	],
	"Grajaú": [
	"Siim. Um suspeito havia me imformado que um novo município estava sendo gerado a partir da cidade de monção. Ah, ele também disse que esse municipio se chama Engenho de São Pedro de Alcântara.",
	"Sim, ele me afirmou que estava indo para uma cidade aí. Não lembro o nome, mas sei que lá tem um Engenho quase fechando as portas por causa da decadência da indústria açucareira.",
	"Siô. Agora pouco passou um  suspeito dizendo que ia presenciar a construção da  ferrovia que faz ligação ao Engenho Central e ao porto Terminal dos Canaviais."

	],
	"Pindaré": [
	"Tinha uma pessoa bem estranha por aqui mesmo. Ele disse que iria para inauguração da primeira indústria da cidade. Aparentemente essa  indústria se chama Companhia Manufatureira e Agrícola. ",
	"Uma pessoa suspeita    me falou que  depois da visita do presidente Afonso Pena no Estado, foi decidido  que iria ser colocado uma estação ferroviária em uma cidade da região dos cocais, ele disse que a estrada de ferro vai de São Luís até Cajazeira.",
	"Eu ouvi uma pessoa muito suspeita dizendo para um senhor que estava indo para o leste do Estado, atrás de uma cidade da umbanda. "

	],
	"Alcântara": [ 
	"!!!!  ",
	"!!!" ,
	"!!!"
	],
	"Barreirinhas": [ 
	"Uma pessoa muito estranho passou por aqui agorinha, ele disse que estava indo participar do debate contra os higiênitas para não demolirem a cidade, não entendi foi nada.",
	"Rapaz, parece que siim, tinha uma pessoa aqui  dizendo que estava indo para uma cidade aí, disse que os edifícios estavam ficando ruins e as pessoas estavam indo embora de lá, não sei oque ele quis dizer com isso. ",
	"Havia uma pessoa bem suspeito por aqui, ela me disse que estava a caminho da cidade que foi a maior indústria do Estado, mas que está decaindo aos poucos depois da abolição da escravatura, na verdade achei isso tudo bem estranho."
	],
	"Codó": [
	" Siô, uma pessoa estranha esses dias me perguntou na rua pra que rumo ficam os lençóis maranhenses. Acho que muita gente como ele tá se interessando em conhecer esse lugar, afinal, começaram a divulgar bastante as belezas naturais de lá. Ou então ele queria arrumar emprego, porque a demanda de lá deve aumentar agora com essas divulgações.",
	"Rapaz, um dia desse passou um homem perguntando por um lugar que haviam descoberto petróleo aqui no Maranhão. Eu não me lembro direito, mas um pessoal respondeu a ele que nesse lugar tinha umas dunas de areia. Agora eu mesmo não sei onde fica isso, você sabe!?",
	"Meu fi, esses dias um rapaz me perguntou onde ficava um lugar que tinha acabado de se emancipar lá pro norte. Eu não soube respondê-lo, mas ele, convicto, disse que estava a caminho de lá"
	],
	####################################################
	"Barra do Corda": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a população com a criação da estrada Belém Brasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada. Eu não entendi foi nada.",
		"O quê? suspeito? Suspeito de quê?\n Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a década de 1980, vivia o ciclo do arroz. Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Bacabal": [
		"Um rapaz passou por aqui falando sobre uma cidade muito antiga aqui do Maranhão, que foi fundada em meados do século XIX, ainda no período colonial e que se desenvolveu como um importante centro econômico e cultural. Além disso, segundo ele, a cidade era inicialmente uma vila de pescadores, que se estabeleceram às margens do rio Pericumã. Essa boa localização contribuiu para o crescimento econômico dessa cidade ao longo dos séculos.",
		"Um suspeito passou por aqui e comentou sobre uma cidade que  é conhecida por sua importância na história do Maranhão. A cidade tem um centro histórico preservado, com casarões e igrejas antigas que contam parte da trajetória do estado. Talvez viajar para um desses lugares históricos possa te levar até a resposta que deseja.",
		"Um indivíduo estranho me perguntou sobre a cidade que é considerada a 'Princesa da Baixada'. Parece que este lugar é um importante centro cultural e histórico, conhecido por suas festas tradicionais e pela riqueza do artesanato local. Além disso, a cidade tem um porto que desempenha um papel fundamental no transporte de mercadorias pela região, tornando a cidade em um centro de comércio e transporte fluvial, com atividades comerciais relacionadas à pesca, agricultura e outros setores."

		
		
		],
	"Paço do Lumiar": [
	"Um homem estranho passou por aqui falando sobre um lugar o qual sua história remonta ao processo de colonização da região do sul do Maranhão. E que desde seu crescimento e fundação, antes da década de 50, vem sendo um importante centro econômico e agrícola na região.",
	"Um sujeito estranho comentou sobre uma cidade que é um importante polo de produção agrícola, especialmente de grãos e soja. A cidade possui vastas áreas de plantações e é considerada uma referência no setor e fica mais pro centro-sul do estado. Talvez investigar mais sobre esta cidade com essas características possa te levar até esse cidadão.",
	"Recentemente, um rapaz suspeito perguntou-me sobre a cidade que é conhecida como a 'Princesa do Sul'. Ele disse que essa cidade é um importante polo agropecuário, responsável por grande parte da produção agrícola do estado. Além disso, a cidade possui uma bela paisagem, com rios e cachoeiras que encantam os visitantes."
	],
	"Timon": [
	"Um suspeito passou por aqui e perguntou sobre o município que é considerado o 'Berço da Fé'. Ele disse que lá ocorre uma das maiores festas religiosas do estado, atraindo milhares de fiéis de todo o Brasil. Parece que a cidade também possui uma bela praia que é muito frequentada pelos moradores e turistas.",
	"Um suspeito passou por aqui e disse que estava rumo a uma cidade que abriga uma importante igreja, considerada o maior centro de devoção. Essa igreja atrai peregrinos e devotos de diferentes lugares, especialmente durante as festividades religiosas.",
	"Um sujeito suspeito comentou sobre uma cidade com uma história muito rica e que, durante o século XX, passou por um processo de urbanização significativo e um aumento na população devido à sua proximidade com a capital, São Luís. Muito provavelmente ele estava indo em direção a este lugar."

	],
	"Balsas": [ 
	"Cara, um indivíduo duvidoso passou por aqui comentando sobre uma cidade que é cortada pelo rio de mesmo nome, que foi fundamental para o desenvolvimento da região e que contém várias histórias sobre seu respeito e muitos segredos. Ele contava isso entusiasmado, me parece que estava ansioso para ir para lá, por algum motivo.",
	"Olha, um sujeito estranho me disse sobre um lugar que há uma forte presença da cultura afrodescendente, como em festas como o Bumba Meu Boi e o Tambor de Crioula. Eu não sei direito onde fica esse lugar, mas se você investigar melhor talvez possa saber pra onde esse homem foi." ,
	"Meu fi, um caboco suspeito andou por aqui e falou que estava indo rumo a uma cidade muito antiga aqui do nosso estado, que vem crescendo desde meados do século XIX, tendo exercido um papel importante em lutas e movimentos a favor da independência do Brasil de Portugal. Além disso, a localização estratégica dessa cidade, às margens de um rio muito importante, tornou-a um ponto importante de comércio e transporte na região."

	],
	"Pinheiro": [ 
	"Um sujeito bem misterioso passou por aqui e me perguntou sobre a cidade que faz fronteira com o estado do Piauí. Parece que lá é uma cidade muito importante para o comércio da região, sendo um polo de desenvolvimento econômico e industrial. Além disso, ela possui uma das maiores pontes do país, ligando os estados do Maranhão e do Piauí.",
	"Olá, um cidadão passou aqui mencionando uma cidade que teve um crescimento urbano e comercial durante o século XX devido à sua localização próxima à Teresina, capital do Piauí. Além disso, é conhecida por sua rica diversidade cultural. Dizendo que a cidade abriga festas tradicionais que resgatam as tradições nordestinas, como o bumba meu boi e o tambor de crioula.",
	"Um suspeito mencionou que estava em busca de uma cidade com uma importante história ferroviária. Segundo ele, a cidade se desenvolveu por, além de fazer fronteira com o Piauí, abrigar uma estação ferroviária que foi fundamental para o desenvolvimento do transporte de cargas e passageiros na região."
	],
	"São José de Ribamar": [
	"Um indivíduo suspeito me contou sobre uma cidade que tem uma ligação com a exploração da castanha de caju, que é uma atividade econômica importante na região. Pesquisar sobre a história da produção de castanha de caju pode te dar as informações que precisa pra saber pra onde esse cidadão foi.",
	"Rapaz, um suspeito passou por aqui falando de uma cidade jovem aqui do nosso estado e que fica lá pro norte, tendo sua economia historicamente ligada à agricultura, com destaque para a produção de arroz, mandioca e milho. Esse desenvolvimento da agricultura e o papel da cidade na produção agrícola regional são pontos importantes dessa cidade.",
	"Um sujeito misterioso passou por aqui e mencionou sobre uma cidade que é conhecida por sua localização próxima ao Rio Gurupi, que desempenha um papel importante na vida dos habitantes da região, além de ter uma relação histórica com o rio. Ele foi embora e provavelmente foi em direção a essa cidade."

	],
	"Itapecuru": [ 
	"!!!!  ",
	"!!!" ,
	"!!!"
	],
	"Açailândia": [ 
	"Uma pessoa muito estranho passou por aqui agorinha, ele disse que estava indo participar do debate contra os higiênitas para não demolirem a cidade, não entendi foi nada.",
	"Rapaz, parece que siim, tinha uma pessoa aqui  dizendo que estava indo para uma cidade aí, disse que os edifícios estavam ficando ruins e as pessoas estavam indo embora de lá, não sei oque ele quis dizer com isso. ",
	"Havia uma pessoa bem suspeito por aqui, ela me disse que estava a caminho da cidade que foi a maior indústria do Estado, mas que está decaindo aos poucos depois da abolição da escravatura, na verdade achei isso tudo bem estranho."
	],
	"Godofredo Viana": [
	" Siô, uma pessoa estranha esses dias me perguntou na rua pra que rumo ficam os lençóis maranhenses. Acho que muita gente como ele tá se interessando em conhecer esse lugar, afinal, começaram a divulgar bastante as belezas naturais de lá. Ou então ele queria arrumar emprego, porque a demanda de lá deve aumentar agora com essas divulgações.",
	"Rapaz, um dia desse passou um homem perguntando por um lugar que haviam descoberto petróleo aqui no Maranhão. Eu não me lembro direito, mas um pessoal respondeu a ele que nesse lugar tinha umas dunas de areia. Agora eu mesmo não sei onde fica isso, você sabe!?",
	"Meu fi, esses dias um rapaz me perguntou onde ficava um lugar que tinha acabado de se emancipar lá pro norte. Eu não soube respondê-lo, mas ele, convicto, disse que estava a caminho de lá"
	],
	"Luís Domingues": [ 
	"Uma pessoa muito estranho passou por aqui agorinha, ele disse que estava indo participar do debate contra os higiênitas para não demolirem a cidade, não entendi foi nada.",
	"Rapaz, parece que siim, tinha uma pessoa aqui  dizendo que estava indo para uma cidade aí, disse que os edifícios estavam ficando ruins e as pessoas estavam indo embora de lá, não sei oque ele quis dizer com isso. ",
	"Havia uma pessoa bem suspeito por aqui, ela me disse que estava a caminho da cidade que foi a maior indústria do Estado, mas que está decaindo aos poucos depois da abolição da escravatura, na verdade achei isso tudo bem estranho."
	]
}
#LISTA DE PERSONAGENS
@onready var tela ={
	"São Luís": [ 
		"res://tudo/imagens/personagens/Ruan.jpg",
		"res://tudo/imagens/personagens/Gi.jpg",
		"res://tudo/imagens/personagens/Zezinho.jpg"
	
	],
	"Imperatriz": [
		
		"res://tudo/imagens/personagens/dona_ana.jpg",
		"res://tudo/imagens/personagens/Leia.jpg",
		"res://tudo/imagens/personagens/Claudinho.jpg"
	],
	"Grajaú": [
		"res://tudo/imagens/personagens/padre.jpg",
		"res://tudo/imagens/personagens/sara.jpg", 
		"res://tudo/imagens/personagens/Di.jpg"
		
	],
	"Carutapera": [
		
		"res://tudo/imagens/personagens/Zezinho.jpg",
		"res://tudo/imagens/personagens/Pedrinho.jpg",
		"res://tudo/imagens/personagens/Leia.jpg"
		
	],
	"Pindaré": [
		"res://tudo/imagens/personagens/Zezinho.jpg",
		"res://tudo/imagens/personagens/jorge.jpg",
		"res://tudo/imagens/personagens/Amanda.jpg", 
	
	],
	"Alcântara": [ 
	"res://tudo/imagens/personagens/Joao.jpg",
	"res://tudo/imagens/personagens/Luizinho.jpg",
	"res://tudo/imagens/personagens/Ruan.jpg"

	],
	"Guimarães": [
		"res://tudo/imagens/personagens/Pescador22.jpg",
		"res://tudo/imagens/personagens/Luizinho.jpg",
		"res://tudo/imagens/personagens/Ruan.jpg"
	
	],
	"Buriticupu": [
		"res://tudo/imagens/personagens/Claudinho.jpg",
		"res://tudo/imagens/personagens/Zezinho.jpg",
		"res://tudo/imagens/personagens/Di.jpg"
	],
	"Caxias": [
		"res://tudo/imagens/personagens/SeuJorge.jpg",
		"res://tudo/imagens/personagens/Claudinho.jpg",
		"res://tudo/imagens/personagens/Maycon.jpg",
	],
	"Carolina": [
		"res://tudo/imagens/personagens/Claudinho.jpg",
		"res://tudo/imagens/personagens/maria.jpg", 
		"res://tudo/imagens/personagens/Cah.jpg", 
	],
	"Barreirinhas": [ 
	"res://tudo/imagens/personagens/maria.jpg", 
	"res://tudo/imagens/personagens/Maycon.jpg", 
	"res://tudo/imagens/personagens/SeuChico.jpg"
	
	],
	"Codó": [
	"res://tudo/imagens/personagens/Cah.jpg", 
	"res://tudo/imagens/personagens/Luizinho.jpg",
	"res://tudo/imagens/personagens/Gi.jpg",
	],
	"Santa Inês": [
	"res://tudo/imagens/personagens/Gi.jpg",
	"res://tudo/imagens/personagens/Joao.jpg",
	"res://tudo/imagens/personagens/padre.jpg",
	
	],
	"Viana": [
		"res://tudo/imagens/personagens/Ruan.jpg",
		"res://tudo/imagens/personagens/Pedrinho.jpg",
		"res://tudo/imagens/personagens/Gi.jpg",
	
	],
	############################################33
	"Barra do Corda": [ 
"res://tudo/imagens/personagens/personagens_novos/a1.jpg",
"res://tudo/imagens/personagens/personagens_novos/a.png",
"res://tudo/imagens/personagens/personagens_novos/l.png"
		
	],
	"Bacabal": [
		"res://tudo/imagens/personagens/personagens_novos/c.png",
		"res://tudo/imagens/personagens/personagens_novos/b.png",
		"res://tudo/imagens/personagens/personagens_novos/c1.jpg"
		
	],
	"Paço do Lumiar": [
		"res://tudo/imagens/personagens/personagens_novos/f.png",
		"res://tudo/imagens/personagens/imperatriz/Di.jpg",
		"res://tudo/imagens/personagens/personagens_novos/d1.jpg"
	],
	"Timon": [
		"res://tudo/imagens/personagens/personagens_novos/c.png",
		"res://tudo/imagens/personagens/personagens_novos/b.png",
		"res://tudo/imagens/personagens/personagens_novos/e1.jpg"
	],
	"Balsas": ["res://tudo/imagens/personagens/personagens_novos/l.png",
		"res://tudo/imagens/personagens/personagens_novos/h.png",
	"res://tudo/imagens/personagens/personagens_novos/i.png"
	],
	"Pinheiro": [ 
	"res://tudo/imagens/personagens/personagens_novos/e.png",
	"res://tudo/imagens/personagens/personagens_novos/j.png",
	"res://tudo/imagens/personagens/personagens_novos/k.png"
	],
	"São José de Ribamar": [
	"res://tudo/imagens/personagens/personagens_novos/c.png",
	"res://tudo/imagens/personagens/personagens_novos/q.png",
	"res://tudo/imagens/personagens/personagens_novos/d.png"
	],
	"Itapecuru": [
		"res://tudo/imagens/personagens/personagens_novos/g.png",
		"res://tudo/imagens/personagens/personagens_novos/f.png",
		"res://tudo/imagens/personagens/personagens_novos/j.png"
	],
	"Açailândia": [
		"res://tudo/imagens/personagens/personagens_novos/j.png",
		"res://tudo/imagens/personagens/personagens_novos/h.png",
		"res://tudo/imagens/personagens/personagens_novos/i.png"
		
	],
	"Godofredo Viana": [
		"res://tudo/imagens/personagens/personagens_novos/o.png",
		"res://tudo/imagens/personagens/personagens_novos/p.png",
		"res://tudo/imagens/personagens/personagens_novos/n.png"
		],
	"Luís Domingues": [ 
		"res://tudo/imagens/personagens/personagens_novos/u.png",
		"res://tudo/imagens/personagens/personagens_novos/m.png",
		"res://tudo/imagens/personagens/personagens_novos/w.png"
]
}

var current = " "
var verifica = false

var num =0
func _ready():
	$botao1/Label.text = "VOLTAR"
	$botao1/Label.modulate = Color(0,0,0,1)
	$botao2/Label.text = "CAZUMBAR"
	$botao2/Label.modulate = Color(0,0,0,1)
	
	current = Global.cidade
	var todas_as_cidades = Global.cidades_certas + Global.cidades_cetas_novas
	#print(Global.cidades_certas + Global.cidades_cetas_novas)
	f_caminho()
	if verifica == true and Global.cidade in todas_as_cidades:
		$Label.text = (texto[current][Global.botao])
	else:
		$Label.text = (sem_dica[Global.botao])
		
	$Label.modulate = Color(0,0,0,1)
	$Sprite2D.texture = load(tela[current][Global.botao])
	pass
var soma = 0 

func _process(delta):
#if verifica == false:
	soma = soma + 0.5
	$Label.visible_characters = soma
	#print(Global.cidade +" Deu certo")
	

func _on_botao1_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CIDADE.tscn" )
	pass # Replace with function body.


func _on_botao2_pressed():
	Musica.som_botao()
	get_tree().change_scene_to_file("res://cenas/CAZUMBAR.tscn" )
	pass # Replace with function body.

func f_caminho():
	
	if Global.cidade== "São Luís" and Global.caminho[0]==1:
		verifica = true
	elif Global.cidade== "Imperatriz" and Global.caminho[1]==1:
		verifica = true
	elif Global.cidade== "Grajaú" and Global.caminho[2]==1:
		verifica = true
	elif Global.cidade== "Pindaré" and Global.caminho[3]==1:
		verifica = true
	elif Global.cidade== "Codó" and Global.caminho[4]==1:
		verifica = true
	elif Global.cidade== "Barreirinhas" and Global.caminho[5]==1:
		verifica = true
	elif Global.cidade== "Alcântara" and Global.caminho[6]==1:
		verifica = true
	elif Global.cidade== "Godofredo Viana" and Global.caminho[7]==1:
		verifica = true
	elif Global.cidade== "Bacabal" and Global.caminho[8]==1 :
		verifica = true
	elif Global.cidade== "Pinheiro" and Global.caminho[9]==1:
		verifica = true
	elif Global.cidade== "Timon" and Global.caminho[10]==1:
		verifica = true
	elif Global.cidade== "São José de Ribamar" and Global.caminho[11]==1:
		verifica = true
	elif Global.cidade== "Luís Domingues" and Global.caminho[12]==1:
		verifica = true
	elif Global.cidade== "Paço do Lumiar" and Global.caminho[13]==1:
		verifica = true
	elif Global.cidade== "Balsas" and Global.caminho[14]==1:
		verifica = true
	elif Global.cidade== "Itapecuru" and Global.caminho[15]==1:
		verifica = true
	elif Global.cidade== "Açailândia" and Global.caminho[16]==1:
		verifica = true
		
