<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- CSS -->
    <link rel="stylesheet" href="CSS/layout.css">

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
    <!--FONTAWESOME-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
	 <header id="main-header">
        <div class="container">
            <div class="row">
                <div class="col-12 relative">
                    <a id="main-logo" href="index.jsp">
                        <img loading="lazy" src="img/logo.png" alt="Logotipo do filme">
                    </a>
                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#main-nav" aria-controls="main-nav" aria-expanded="false" aria-label="Visualizar a navega��o">
                        <i class="fa fa-bars"></i>
                    </button>
                    <hr class="d-none d-lg-block">
                    <div class="justify-content-center">
                        <nav class="navbar navbar-expand-lg navbar-dark">
                          <div class="collapse navbar-collapse" id="main-nav">
                              <ul class="navbar-nav mx-auto">
                                  <li class="nav-item">
                                      <a class="nav-link" href="index.jsp">Home</a>
                                  </li>

                                  <li class="nav-item">
                                    <a class="nav-link" href="#">Diagrama</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#">Machine Learning</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="personagens.jsp">Personagens</a>
                                </li>

                              </ul>
                          </div>  
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>