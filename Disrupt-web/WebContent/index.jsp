<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <!-- CSS -->
    <link rel="stylesheet" href="CSS/home.css">

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

    <section id="video">
        <video autoplay muted loop id="myVideo">
            
          </video>          
          <!-- Optional: some overlay text to describe the video -->
          <div class="content">
            <h1>MC FLY EST� EM APUROS!</h1>
            <p>Inicie o quiz e ajude-o.</p>
            <!-- Use a button to pause/play the video with JavaScript -->
            <button id="myBtn">INICIAR QUIZ</button>
          </div>
    </section>

    <section id="quiz" style="display:none;">
    	<h1 id="quiz-title">QUIZ SOBRE O FILME</h1>
        <div class="container game-quiz">
            <div class="row">
                <div class="col-md">
                    <div class= "card justify-content-center"  style="width: 35rem; border-radius: 10px; border: 3px solid #00f;">
                        <img src="img/clock.gif" class="card-img-top" alt="imagem quiz">
                        <div class="card-body">
                          <h5 class="card-title">Lorem Impsum</h5>
                          <p class="card-text">Esse rélógio no topo do prédio é o mesmo que gerou energia através do raio para McFly viajar no tempo?</p>
                          <a href="#" class="btn btn-primary" style="margin-left:10%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">SIM</a>
                          <a href="#" class="btn btn-primary" style="margin-left: 50%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">N�O</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
        
         <div class="container game-quiz ">
            <div class="row">
                <div class="col-md">
                    <div class= "card justify-content-center"  style="width: 35rem; border-radius: 10px; border: 3px solid #00f;">
                        <img src="img/einstein.gif" class="card-img-top" alt="imagem quiz">
                        <div class="card-body">
                          <h5 class="card-title">Lorem Impsum</h5>
                          <p class="card-text">O ser que estava vianajando no tempo nessa cena foi a Jennifer, a namorada de McFLy?</p>
                          <a href="#" class="btn btn-primary" style="margin-left:10%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">SIM</a>
                          <a href="#" class="btn btn-primary" style="margin-left: 50%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">N�O</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
        
         <div class="container game-quiz ">
            <div class="row">
                <div class="col-md">
                    <div class= "card justify-content-center"  style="width: 35rem; border-radius: 10px; border: 3px solid #00f;">
                        <img src="img/ck.gif" class="card-img-top" alt="imagem quiz">
                        <div class="card-body">
                          <h5 class="card-title">Lorem Impsum</h5>
                          <p class="card-text">Lorraine nessa cena está encantada com a fala de seu amado George?</p>
                          <a href="#" class="btn btn-primary" style="margin-left:10%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">SIM</a>
                          <a href="#" class="btn btn-primary" style="margin-left: 50%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">N�O</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
        
         <div class="container game-quiz ">
            <div class="row">
                <div class="col-md">
                    <div class= "card justify-content-center"  style="width: 35rem; border-radius: 10px; border: 3px solid #00f;">
                        <img src="img/run.gif" class="card-img-top" alt="imagem quiz">
                        <div class="card-body">
                          <h5 class="card-title">Lorem Impsum</h5>
                          <p class="card-text">Marty McFly está fungindo do Biff devidp a uma briga no Café da cidade?</p>
                          <a href="#" class="btn btn-primary" style=" margin-left:10%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">SIM</a>
                          <a href="#" class="btn btn-primary" style="margin-left: 50%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">N�O</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
        
         <div class="container game-quiz ">
            <div class="row">
                <div class="col-md">
                    <div class= "card justify-content-center"  style="width: 35rem; border-radius: 10px; border: 3px solid #00f;">
                        <img src="img/tv.gif" class="card-img-top" alt="imagem quiz">
                        <div class="card-body">
                          <h5 class="card-title">Lorem Impsum</h5>
                          <p class="card-text">Os irmão de Lorraine estão espantados e dizendo que "Calvin Klein" é rico devido ele ter dois telefones em sua casa?</p>
                          <a href="#" class="btn btn-primary" style=" margin-left:10% ;background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">SIM</a>
                          <a href="#" class="btn btn-primary" style="margin-left: 50%; background-color:#00f; border:2px solid #000; border-radius: 19px; width:70px;">N�O</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
	</section>

<!-- CHAMANDO O FOOTER -->
    <%@ include file="footer.jsp"%>
    
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
      <script src="JS/script.js"></script>
 
</body>

</html>