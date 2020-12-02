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
        <img class="d-block mx-auto mb-4" src="<c:url value='/images/logo1.png'/>" 
             alt="Fresh Corn Records Logo" width="58">
        <h1>QuickMart</h1>
        <h2>The best stuff around!</h2>
    </header>
    <nav id="nav_bar">
        <ul>
            <li><a href="<c:url value='/index.jsp'/>">
                    Home</a></li>
            <li><a href="<c:url value='/products/index.jsp'/>">Products</a></li>
           
        </ul>
    </nav>