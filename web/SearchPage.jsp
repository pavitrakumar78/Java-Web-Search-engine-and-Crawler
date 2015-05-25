<%-- 
    Document   : SearchPage
    Created on : Mar 20, 2015, 10:43:43 PM
    Author     : pavitrakumar
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Pack1.searchResult" %>
<!DOCTYPE html>


<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Search Page</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="nav_bar">
                <ul>
                </ul>
            </div>
            <div class="container_main">
                <div class="logo"><img src="images/logo.png" alt="Google Logo"></div>
                <form action ="dispRows" method = "POST">
                    <div class="searchbox">
                        <input type="text" name ="keyword">
                    </div>
                    <div class="container_buttons_search">
                        <input type="submit" value = "Search" class = "google_search button_search">
                    </div>
                </form>
            </div>
            <div class="footer">
                <div class="footer_left">
                    <ul>
                        <li><a href="aboutPageAJ.html">About</a></li>
                        <li><a href="http://www.google.co.in/insidesearch/howsearchworks/thestory/index.html">How Google Search Works</a></li>
                        <li><a href="xmlpage1.xml">Technologies Used</a></li>
                    </ul>
                </div>
                <div class="footer_right">
                    <ul>
                        
                    </ul>				
                </div>
            </div>
        </div>
    </body>
</html>
