<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Minhas Ações</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style> 
  .azul {
    color:lime
   } 
  </style>
  
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

<div class="container">
  <h2>Minhas Aplicações em ações</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/nasdaq.jpg" alt="Nasdaq" style="width:100%;">
        <div class="carousel-caption">
          <h3 class="azul">NASDAQ</h3>
          <p class="azul">National Association of Securities Dealers Automated Quotations</p>
        </div>
      </div>

      <div class="item">
        <img src="img/dow_jones.jpg" alt="Dow Jones" style="width:100%;">
        <div class="carousel-caption">
          <h3 class="azul">DOW JONES</h3>
          <p class="azul">Dow Jones Industrial Average</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/b3.jpg" alt="B3" style="width:100%;">
        <div class="carousel-caption">
          <h3 class="azul">B3</h3>
          <p class="azul">Brasil, Bolsa, Balcão</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
