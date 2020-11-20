/*
Gabriel nogueira da Silva 84738
Fillipi Gonçalves da Silva 84649
Gabriel Vinicius Batista 85526
Higor Fernando Holanda 86371
João Vítor de Moraes Ribeiro 86100
Leonardo Marcondes de Godoy Santos 85610
*/

DROP TABLE T_JOGO CASCADE CONSTRAINTS;
DROP TABLE T_JOGADOR CASCADE CONSTRAINTS;
DROP TABLE T_LINHA_TEMPO CASCADE CONSTRAINTS;
DROP TABLE T_CURIOSIDADE CASCADE CONSTRAINTS;
DROP TABLE T_PERSONAGEM CASCADE CONSTRAINTS;

CREATE TABLE T_JOGO (
    ID_JOGO NUMBER(4) PRIMARY KEY NOT NULL,
    PERGUNTA VARCHAR2(1000) NOT NULL,
    RESPOSTA CHAR(1) NOT NULL
);

CREATE TABLE T_JOGADOR (
    ID_JOGADOR NUMBER(4) PRIMARY KEY NOT NULL,
    NOME VARCHAR2(120) NOT NULL,
    PONTUACAO NUMBER(4) NOT NULL
);

CREATE TABLE T_LINHA_TEMPO (
    ID_LINHA_TEMPO NUMBER(4) PRIMARY KEY NOT NULL,
    ANO NUMBER(4) NOT NULL,
    CRONOLOGIA VARCHAR2(1000) NOT NULL
);

CREATE TABLE T_PERSONAGEM (
    ID_PERSONAGEM NUMBER(4) PRIMARY KEY NOT NULL,
    NOME VARCHAR2(120) NOT NULL,
    HISTORIA VARCHAR2(4000) NOT NULL,
    IMAGEM_PERSONAGEM VARCHAR2(1000) NOT NULL
);

CREATE TABLE T_CURIOSIDADE (
    ID_CURIOSIDADE NUMBER(4) PRIMARY KEY NOT NULL,
    DESCRICAO VARCHAR2(4000) NOT NULL,
    IMAGEM_CURIOSIDADE VARCHAR2(1000) NOT NULL
);

-- INSERÇÃO DOS VALORES DA TABELA "JOGO"
INSERT INTO T_JOGO VALUES (1, '', 'N');
INSERT INTO T_JOGO VALUES (2, '', 'N');
INSERT INTO T_JOGO VALUES (3, '', 'N');
INSERT INTO T_JOGO VALUES (4, '', 'N');
INSERT INTO T_JOGO VALUES (5, '', 'N');
INSERT INTO T_JOGO VALUES (6, '', 'N');
INSERT INTO T_JOGO VALUES (7, '', 'N');
INSERT INTO T_JOGO VALUES (8, '', 'N');
INSERT INTO T_JOGO VALUES (9, '', 'N');
INSERT INTO T_JOGO VALUES (10, '', 'N');


-- INSERÇÃO DOS VALORES DA TABELA "LINHA DO TEMPO"
INSERT INTO T_LINHA_TEMPO VALUES (1, 1985, 'presente');
INSERT INTO T_LINHA_TEMPO VALUES (2, 1955, 'passado');
INSERT INTO T_LINHA_TEMPO VALUES (3, 1985, 'presente alternativo');

-- INSERÇÃO DOS VALORES DA TABELA "PERSONAGEM"
INSERT INTO T_PERSONAGEM VALUES (
    1, 
    'Marty McFly', 
    'Marty nasceu em 12 de junho de 1968, em Hill Valley, Califórnia. Ele é o irmão mais novo dos três filhos de George e Lorraine McFly. Seus irmãos são Dave e Linda e sua namorada Jennifer Parker. Seu melhor amigo é o cientista Emmett Brown, quem ele chama de “Doc”.
    Marty é um adolescente despreocupado; ele não é exatamente o melhor estudante, mas suas notas são aceitáveis, embora chegue sempre atrasado na escola. Ele toca guitarra na banda The Pinheads e ouve Huey Lewis and the News, ZZ Top, Chuck Berry e Van Halen. Além disso, é um skatista habilidoso.',
    'https://static.wikia.nocookie.net/bttf/images/e/e5/Martyvest1955.jpg/revision/latest?cb=20110112223247');
    
INSERT INTO T_PERSONAGEM VALUES (
    2,
    'Doc Emmett Brown',
    'Emmett Brown é um cientista e melhor amigo de Marty MacFly. Nascido na cidade fictícia de Hill Valley, Califórnia, em 1914, ele se define como “estudante de todas as ciências” e passa grande parte de seu tempo inventando artefatos, entre os quais se destaca uma máquina do tempo, construída sobre a carroceria de um carro DeLorean DMC-12, que motiva as aventuras pelo tempo.
    Entre seus ídolos, estão: Isaac Newton, Benjamin Franklin, Thomas Edison e Albert Einstein – todos enquadrados em cima da lareira de sua sala de estar. Em 1955, ele tem um cachorro chamado Copérnico e, depois, em 1985, outro chamado Einstein.',
    'https://miro.medium.com/max/500/0*OoUgcnkoRMF_Oww7.jpg');
    
INSERT INTO T_PERSONAGEM VALUES (
    3,
    'Biff Tannen',
    'Biff nasceu em 26 de março de 1938, em Hill Valley, Califórnia, e é o principal inimigo de Marty McFly. Ele é o bisneto de Buford “Cachorro Louco” Tannen, filho de Kid Tannen e avô de Griff Tannen. Desde novo, ele é muito temido por seus colegas de classe. Biff é menos valente quando está sem sua turma, e é apaixonado por Lorraine Baines, referindo-se a ela, muitas vezes, como “minha garota”, porém Lorraine afirma que nem por um milhão de dólares seria sua namorada.',
    'https://pbs.twimg.com/profile_images/1234628346/Biff_Tannen_400x400.jpg');
    
INSERT INTO T_PERSONAGEM VALUES (
    4,
    'Jennifer Parker',
    'Jennifer Jane Parker McFly era a namorada, e mais tarde a esposa, de Marty McFly. Jennifer foi a quarta viajante do tempo do mundo e a terceira humana. Ela era filha de Danny Parker Jr. e Betty Parker, e neta de Danny Parker e sua esposa Betty Lapinski.
    Jennifer e Marty pareciam ser "sérios" o suficiente para que ele a apresentasse a seu melhor amigo, o inventor local Dr. Emmett Brown, a quem ela primeiro considerou excêntrico e estranho.
    Jennifer é principalmente uma pessoa positiva, sabendo o que dizer a Marty se ele precisasse de ânimo e imaginando que vida feliz ela poderia ter no futuro.',
    'https://static.wikia.nocookie.net/bttf/images/6/65/Jennifer-02.jpg');
    
INSERT INTO T_PERSONAGEM VALUES (
    5,
    'Lorraine Baines McFly',
    'Lorraine Baines McFly é a mãe de Dave, Linda e Marty McFly e esposa de George McFly. Lorraine gostava da atenção dos meninos quando estava na escola, e muitos deles eram atraídos por ela, incluindo George McFly e Biff Tannen. Lorraine não tinha medo de conseguir o que queria e muitas vezes estacionava em carros com eles. 
    Lorraine poderia defender a si mesma e as pessoas com quem ela se importava, mas apesar disso, ela gostava que seus homens fossem fortes e capazes de protegê-la. Ela gostava de pensar nos "velhos tempos", sempre contando a história de como conheceu e se apaixonou por George. Lorraine gostava de jogar tênis com o marido e eles foram campeões do clube de tênis nos últimos seis anos em 1985. As melhores amigas de Lorraine na escola eram Betty e Babs, e ela frequentemente podia ser encontrada no Lous Cafe fofocando com eles.',
    'http://3.bp.blogspot.com/-eeIWYJPZHeI/Tms7JdXCWTI/AAAAAAAACj4/ZHJTxjiL7WY/s1600/BackTTFuture_188Pyxurz.jpg');
    
INSERT INTO T_PERSONAGEM VALUES (
    6,
    'George McFly',
    'George Douglas McFly é o pai de Dave, Linda e Marty McFly, e marido de Lorraine Baines McFly. Ele era de ascendência irlandesa-americana, pois seus bisavós paternos Seamus e Maggie McFly haviam emigrado da Irlanda antes de 1885.
    George era um menino inseguro que cresceu e se tornou um covarde nerd incapaz de se defender. Ele tinha poucos amigos no colégio e provavelmente não teve muitos depois. Na linha do tempo original, George trabalhava em uma empresa não identificada, onde seu supervisor era seu valentão da velha escola, Biff Tannen. George gostava de assistir a programas de ficção científica e programas antigos, como The Honeymooners e Science Fiction Theatre. Ele não era muito "esportivo", mas gostava de jogar tênis com a esposa e golfe. Sua bebida favorita em 1955 era leite com chocolate. Ele era tímido e não era de se precipitar. George era muito supersticioso e também tinha uma risada peculiar.',
    'https://i.pinimg.com/originals/33/45/eb/3345eb5b28ac7440cac727f97c19f737.jpg');
    
-- INSERÇÃO DOS VALORES DA TABELA "CURIOSIDADE"
INSERT INTO T_CURIOSIDADE VALUES (1, '', '');
INSERT INTO T_CURIOSIDADE VALUES (2, '', '');
INSERT INTO T_CURIOSIDADE VALUES (3, '', '');
INSERT INTO T_CURIOSIDADE VALUES (4, '', '');
INSERT INTO T_CURIOSIDADE VALUES (5, '', '');
INSERT INTO T_CURIOSIDADE VALUES (6, '', '');
INSERT INTO T_CURIOSIDADE VALUES (7, '', '');
INSERT INTO T_CURIOSIDADE VALUES (8, '', '');
INSERT INTO T_CURIOSIDADE VALUES (9, '', '');
INSERT INTO T_CURIOSIDADE VALUES (10, '', '');
