extends Control

@onready var sobre_a_cidade ={
	"São Luís": [ 
		"A nossa capital! Famosa por ser a única capital brasileira fundada por franceses, tem esse nome em homenagem ao rei da época da sua criação, Luís XIII. Foi, por muito tempo, um ponto importante para a França, pois era considerada estratégica para fortalecer a economia mercantilista presente no território francês."
	],
	"Imperatriz": [
		"A 'Princesa do Tocantins', destaca-se como um polo econômico e cultural às margens do Rio Tocantins. Com um cenário urbano desenvolvido, comércio vibrante e vida cultural rica, a cidade está em constante crescimento. Além disso, o Rio Tocantins desempenha um papel fundamental na história, economia e lazer, oferecendo uma gama de oportunidades, desde navegação até o Carnaval."
	],
	"Grajaú": [
		"Grajaú, no Maranhão, se destaca por fazer parte da Região dos Cocais, uma área de transição entre o Cerrado e a Floresta Amazônica, o que a torna única em termos de biodiversidade e paisagens naturais. Além disso, a cidade está às margens do Rio Grajaú, que é importante para a vida local e oferece oportunidades para atividades aquáticas."
		],
	"Carutapera": [
	"Carutapera, brilha em meio à deslumbrante Baixada Maranhense. Rodeada por paisagens alagadas e rios sinuosos, esta cidade é o ponto de partida perfeito para explorar as maravilhas naturais da região. Suas praias tranquilas e costas cênicas ao longo do Golfo Maranhense também atraem visitantes em busca de relaxamento à beira-mar. O título de 'Princesa da Baixada' celebra a beleza natural e o destaque de Carutapera na região."
	],
	"Pindaré": [
		"Pindaré-Mirim, a 'Terra das Palmeiras', é envolvida por uma vegetação exuberante, incluindo carnaúba, buriti e bacuri. Essas palmeiras desempenham um papel vital na economia e cultura local, com a carnaúba sendo usada na produção de cera. Os frutos do buriti e bacuri são apreciados na culinária e óleos naturais. A cidade cativa visitantes com sua paisagem deslumbrante e cultura única."
	],
	"Alcântara": [ 
	"Alcântara, a 'Cidade dos Azulejos', preserva sua herança colonial com casarões e igrejas adornados por azulejos portugueses do século XVIII. Esses azulejos, trazidos durante o auge econômico da cidade no ciclo do algodão, destacam-se por elementos artísticos e religiosos, tornando a arquitetura única e encantadora. Hoje, Alcântara é um polo turístico do Maranhão, atraindo visitantes para uma viagem no tempo por meio de sua arquitetura preservada."
	],
	"Guimarães": [
		"A 'Princesa da Baía de Cumã', encanta com suas paisagens costeiras deslumbrantes e praias tranquilas à beira da Baía de Cumã. Esta cidade maranhense combina beleza natural com história e cultura, preservando casarões coloniais, igrejas antigas e celebrando festas tradicionais. Descubra a fascinante conexão entre Guimarães e a deslumbrante Baía de Cumã, um tesouro natural do Maranhão."
	],
	"Buriticupu": [
		"Buriticupu, a 'Terra do Babaçu', destaca-se pela importância do babaçu em sua economia e cultura. Os frutos dessa palmeira são usados na produção de óleo, farinha, fibras e vassouras, gerando empregos e sustento. A cidade também celebra o babaçu na tradicional 'Queima do Babaçu', reunindo comunidades para honrar essa riqueza local."
	],
	"Caxias": [
		"Caxias, a 'Princesa do Sertão', destaca-se historicamente e culturalmente na região do sertão maranhense. Com um rico patrimônio arquitetônico e um famoso Carnaval animado, a cidade atrai turistas de todo o estado, mantendo viva suas tradições e história."
	],
	"Carolina": [
		"Carolina, a 'Cidade das Cachoeiras' no Maranhão, é um paraíso natural. Rios, paisagens incríveis e cachoeiras espetaculares cercam esta cidade na região sul do estado. Popular entre os amantes da natureza e ecoturistas, você encontrará joias como a Cachoeira da Pedra Caída, Cachoeira do Itapecuru e muito mais. Aventura e relaxamento em um ambiente natural deslumbrante aguardam por você aqui."
	],
	"Barreirinhas": [ 
		"Barreirinhas, é o ponto de partida para explorar a linda paisagem do  Lençóis Maranhenses, é caracterizada por dunas de areia branca e lagoas de água cristalina. Oferecendo passeios de jardineira e barco. Além disso, conta com uma infraestrutura turística completa, incluindo hotéis, pousadas e restaurantes, enquanto o Rio Preguiças oferece mais belezas naturais. Barreirinhas é o destino perfeito para vivenciar a magia desse tesouro natural no Maranhão."

	],
	"Codó": [
		"Codó, a 'Cidade Morena', com seu solo avermelhado repleto de minerais como o ferro, é uma terra vibrante e única. Esta cidade abraça com entusiasmo o tradicional Bumba Meu Boi, uma festa eletrizante que agita o Maranhão durante o período junino. Venha para Codó e mergulhe na energia de sua paisagem e cultura excepcionais!"
	],
	"Santa Inês": [
		"Sabia que Santa Inês, além de ter sido fundada em 1887 por senhores de escravos, era o principal povoado do município de Pindaré-Mirim? Foi desmembrado de seu vizinho apenas em 1967. Em seu início já foi chamada de Aldeia dos Pretos, Ponta da Linha, Conceição. Sendo, finalmente denominada de Santa Inês, em razão do voto de uma senhora pelo sucesso que obteve em um parto de risco.",
	],
	"Viana": [
		"Você sabia que Viana é a quarta cidade mais antiga do maranhão, tendo sua povoação iniciada em 1709 pelos missionários da Companhia de Jesus? Essa povoação se iniciou no território que, nessa época, se chamava aldeia Guajajara de Maracu.",
	],
	"Luís Domingues": [
		"Luis Domingues, o menor município em extensão territorial no Maranhão, abriga uma comunidade repleta de vitalidade e calor humano! Apesar de seu tamanho compacto, essa cidade é um verdadeiro exemplo de hospitalidade."
	],
	"Godofredo Viana": [ 
		"Godofredo Viana, a 'Cidade das Águas Claras', encanta com seus rios e cachoeiras de águas cristalinas, cercada por uma exuberante vegetação. A famosa Cachoeira do Pancó atrai visitantes em busca de relaxamento e cenários deslumbrantes. Descubra essa joia natural e aproveite suas águas claras e paisagens deslumbrantes."
	],
	"Açailândia": [
		"Açailândia, a 'Capital do Ferro', brilha com um dos maiores complexos siderúrgicos do Brasil. Este centro industrial vital impulsionou empregos e investimentos, impulsionando o desenvolvimento da cidade e contribuindo para a economia do Maranhão e do Brasil. Açailândia orgulhosamente ostenta seu título como epicentro siderúrgico do país."
	],
	"Itapecuru": [
		"Itapecuru Mirim, a 'Terra do Tambor de Crioula', é o berço dessa vibrante manifestação cultural maranhense. O Tambor de Crioula é uma dança afro-brasileira rica em  dança e poesia, onde tambores ditam o compasso e dançarinos executam movimentos sincronizados. A cidade celebra essa tradição, com uma energia contagiante, tornando o Tambor de Crioula uma parte vital da sua identidade cultural."
	],
	"São José de Ribamar": [
		"São José de Ribamar, a Capital da Fé, é um renomado centro de peregrinação religiosa no Brasil, celebrando anualmente no dia 19 de janeiro uma grandiosa festa em homenagem a São José de Ribamar. O Santuário, dedicado ao santo padroeiro do Maranhão, atrai milhares de fiéis de todo o país com procissões, missas e manifestações de fé. Esta cidade orgulha-se de sua herança religiosa, onde a devoção ao Santo transcende a vida espiritual e cultural da região."
	],
	"Pinheiro": [
		"Pinheiro, a 'Princesa da Baixada', destaca-se em uma região rica e biodiversa. Cercada por manguezais, rios e campos alagados, a cidade é um ponto de referência na preservação da fauna e flora. Sua cultura única, fortemente ligada aos ecossistemas locais, valoriza a pesca, agricultura e a herança ribeirinha. O título realça sua beleza natural e papel fundamental na Baixada Maranhense."
	],
	"Balsas": [ 
		"Balsas, a 'Capital do Agronegócio' do Maranhão, com solo fértil e clima propício, a cidade lidera na produção de grãos e pecuária, atraindo investimentos e profissionais de todo o país. Seu papel vital no agronegócio impulsiona empregos, comércio e desenvolvimento, além de sediar eventos que celebram e promovem o setor. Balsas, uma referência no agronegócio maranhense, enriquecendo a economia local e nacional."
	],
	"Timon": [
		"Timon, é um exemplo notável de integração entre cidades. Conhecida como 'Teresina Timon', essa parceria é simbolizada pela Ponte Metálica que atravessa o Rio Parnaíba, unindo as duas localidades. Aqui, moradores frequentemente trabalham, estudam e vivem em ambas as cidades, tornando essa região uma das áreas metropolitanas mais conectadas do Brasil. Uma parceria única e promissora, mostrando como as cidades podem prosperar juntas."
	],
	"Paço do Lumiar": [
		"Em Paço do Lumiar, o 'Sítio do Jaracatiá' é um tesouro arqueológico com mais de 2.000 anos de história. Artefatos cerâmicos, urnas funerárias e vestígios de antigas habitações indígenas revelam segredos fascinantes das culturas ancestrais. A cidade celebra essa herança e convida você a explorar as raízes indígenas que moldaram sua história ao longo dos séculos."
	],
	"Bacabal": [
		"Bacabal, a 'Cidade do Leite', se destaca como um polo vital na produção de leite e seus derivados no Maranhão. A pecuária leiteira impulsiona sua economia, envolvendo fazendas e cooperativas que produzem queijos e iogurtes. Bacabal atrai investimentos e destaque no setor, impulsionando a cadeia produtiva do leite, e celebra anualmente a ExpoLeite, uma feira agropecuária que destaca sua relevância na produção leiteira."
	],
	"Barra do Corda": [
		"Essa cidade é palco de uma das maiores festas religiosas do Maranhão: a 'Festa do Divino Espírito Santo'. Um evento anual que magnetiza milhares de fiéis e visitantes de todo o Brasil. Essa celebração reúne procissões, missas, cultura, dança, e culmina na Coroação do Imperador do Divino. Esta festa unifica pessoas de todas as origens em celebração à fé e devoção ao Divino Espírito Santo. Uma ocasião que fortalece a identidade espiritual e cultural da cidade."
	
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
	
	Musica.som_botao()
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
