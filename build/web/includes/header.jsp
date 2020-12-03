<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

<!doctype html>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>QuickMart</title>
    <link rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>">
    <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>

    <header>
       <nav class="navbar navbar-expand navbar-dark bg-success">
            <div>
                <img class=" navbar-brand d-none d-sm-block mr-4 order-lg-1" src="<c:url value='/images/logo1.png'/>"> </div>
                <div class="navbar-brand" ><a class="navbar-brand" href="#"><h1>QuickMart</h1></a>
                <h6>The best stuff around!&#8482;</h6>
            </div>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExample02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/index.jsp'/>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/products/index.jsp'/>">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/cart/index.jsp'/>">Cart</a>
      </li>
    </ul>
   
  </div>
 </nav>
    </header>
<!-- old nav header!        
    <nav id="nav_bar">
        <ul>
            <li><a href="<c :url value='/index.jsp'/>">
                    Home</a></li>
            <li><a href="<c :url value='/products/index.jsp'/>">Products</a></li>
            <li><a href="<c :url value='/cart/index.jsp'/>">Shopping Cart</a></li>
            
        </ul>
    </nav> -->
            