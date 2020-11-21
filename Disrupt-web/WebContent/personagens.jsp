<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <!-- CSS -->
    <link rel="stylesheet" href="CSS/personagens.css">

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
    <!--FONTAWESOME-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<title>Back to the future</title>
</head>
<body>
	<!-- CHAMANDO A NAVBAR -->

	<%@ include file="nav.jsp"%>
	
	
	<section id="duvidas" class="padding-top-evento padding">
	    <div class="container">
	        <h2 class="text-black text-center text-uppercase py-2">Personagens</h2>


<!-- Botão para acionar modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
    <img src="img/mcfly.jpg" id="mcfly">
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="TituloModalLongoExemplo">Marty Mcfly</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>Marty nasceu em 12 de junho de 1968, em Hill Valley, Califórnia. Ele é o irmão mais novo dos três filhos de George e Lorraine McFly. Seus irmãos são Dave e Linda e sua namorada Jennifer Parker. Seu melhor amigo é o cientista Emmett Brown, quem ele chama de “Doc”.
                Marty é um adolescente despreocupado; ele não é exatamente o melhor estudante, mas suas notas são aceitáveis, embora chegue sempre atrasado na escola. Ele toca guitarra na banda The Pinheads e ouve Huey Lewis and the News, ZZ Top, Chuck Berry e Van Halen. Além disso, é um skatista habilidoso.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Botão para acionar modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
    <img src="img/dr.jpg">
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="TituloModalLongoExemplo">Emmett Brown</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>Emmett Brown é um cientista e melhor amigo de Marty MacFly. Nascido na cidade fictícia de Hill Valley, Califórnia, em 1914, ele se define como “estudante de todas as ciências” e passa grande parte de seu tempo inventando artefatos, entre os quais se destaca uma máquina do tempo, construída sobre a carroceria de um carro DeLorean DMC-12, que motiva as aventuras pelo tempo.
            Entre seus ídolos, estão: Isaac Newton, Benjamin Franklin, Thomas Edison e Albert Einstein – todos enquadrados em cima da lareira de sua sala de estar. Em 1955, ele tem um cachorro chamado Copérnico e, depois, em 1985, outro chamado Einstein</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Botão para acionar modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
    <img src="img/beef.png">
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="TituloModalLongoExemplo">Biff Tannen</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>Biff nasceu em 26 de março de 1938, em Hill Valley, Califórnia, e é o principal inimigo de Marty McFly. Ele é o bisneto de Buford “Cachorro Louco” Tannen, filho de Kid Tannen e avô de Griff Tannen. Desde novo, ele é muito temido por seus colegas de classe. Biff é menos valente quando está sem sua turma, e é apaixonado por Lorraine Baines, referindo-se a ela, muitas vezes, como “minha garota”, porém Lorraine afirma que nem por um milhão de dólares seria sua namorada.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Botão para acionar modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
        <img src="img/mina.jpg">
    </button>
      
      <!-- Modal -->
      <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="TituloModalLongoExemplo">Jennifer Jane Parker McFly</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <p>Jennifer Jane Parker McFly era a namorada, e mais tarde a esposa, de Marty McFly. Jennifer foi a quarta viajante do tempo do mundo e a terceira humana. Ela era filha de Danny Parker Jr. e Betty Parker, e neta de Danny Parker e sua esposa Betty Lapinski.
                    Jennifer e Marty pareciam ser "sérios" o suficiente para que ele a apresentasse a seu melhor amigo, o inventor local Dr. Emmett Brown, a quem ela primeiro considerou excêntrico e estranho.
                    Jennifer é principalmente uma pessoa positiva, sabendo o que dizer a Marty se ele precisasse de ânimo e imaginando que vida feliz ela poderia ter no futuro.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>
    
    <!-- Botão para acionar modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
        <img src="img/mom.jpg">
    </button>
      
      <!-- Modal -->
      <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="TituloModalLongoExemplo">Lorraine McFly</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <p>Lorraine Baines McFly é a mãe de Dave, Linda e Marty McFly e esposa de George McFly. Lorraine gostava da atenção dos meninos quando estava na escola, e muitos deles eram atraídos por ela, incluindo George McFly e Biff Tannen. Lorraine não tinha medo de conseguir o que queria e muitas vezes estacionava em carros com eles. 
                    Lorraine poderia defender a si mesma e as pessoas com quem ela se importava, mas apesar disso, ela gostava que seus homens fossem fortes e capazes de protegê-la. Ela gostava de pensar nos "velhos tempos", sempre contando a história de como conheceu e se apaixonou por George. Lorraine gostava de jogar tênis com o marido e eles foram campeões do clube de tênis nos últimos seis anos em 1985. As melhores amigas de Lorraine na escola eram Betty e Babs, e ela frequentemente podia ser encontrada no Lous Cafe fofocando com eles.'</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>
    

          <!-- Botão para acionar modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalLongoExemplo">
        <img src="img/daddy.jpg">
    </button>
      
      <!-- Modal -->
      <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="TituloModalLongoExemplo">George McFly</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <p>George Douglas McFly é o pai de Dave, Linda e Marty McFly, e marido de Lorraine Baines McFly. Ele era de ascendência irlandesa-americana, pois seus bisavós paternos Seamus e Maggie McFly haviam emigrado da Irlanda antes de 1885.
                    George era um menino inseguro que cresceu e se tornou um covarde nerd incapaz de se defender. Ele tinha poucos amigos no colégio e provavelmente não teve muitos depois. Na linha do tempo original, George trabalhava em uma empresa não identificada, onde seu supervisor era seu valentão da velha escola, Biff Tannen. George gostava de assistir a programas de ficção científica e programas antigos, como The Honeymooners e Science Fiction Theatre. Ele não era muito "esportivo", mas gostava de jogar tênis com a esposa e golfe. Sua bebida favorita em 1955 era leite com chocolate. Ele era tímido e não era de se precipitar. George era muito supersticioso e também tinha uma risada peculiar.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>


	        
		</div>
	</section>	
		
	<%@ include file="footer.jsp"%> 
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
      <script src="JS/script.js"></script>
	
	
</body>
</html>