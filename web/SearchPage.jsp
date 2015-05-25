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
<%--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>JooGle</h1>
        <form action ="dispRows" method = "POST">
            Enter a key word:<br>
            <input type ="text" name ="keyword">
            <input type ="submit" value ="search">
        </form> <br<br><br>
        <table>   
            <c:forEach var="result" items="${result}">  
                <tr>  
                <font size = "4px">${result.getTitle()}</font><br>
                <font color = "green">${result.getDomain()}</font><br>
                <a href = "${result.getURL()}">${result.getURL()}</a>
                <br>
                <br>
                </tr>  
            </c:forEach>  
        </table>
    </body>
</html> --%>
<%--
<style>
    .container {
        width: 100%;
        height: 1000px;
        position: relative;
    }

    nav {
        background-color: #333333;
        height:30px;

    }

    img {
        width:280px;
        margin: 75px auto 0 auto;
        display:block;
    }
    li{
        list-style:none;
        display:inline-block;
        text-decoration: none;
        font-family: arial;
        color: #ABABAB;
        float: left;
        padding: 5px;
        font-size: 13px;
        font-weight: 600;
        margin-top: 2px;
        margin-right: 13px;
    }

    #footer {
        position: absolute;
        bottom: 0;
        width:100%;
        height:60px;
        font-family: verdana;
    }   

    .gsc-result-info {
        text-align: center;
        color: #999;
        font-size: 16px;
        padding-left: 8px;
        margin: 10px 0 10px 0;
    }
    .gs-title {
        color: #0000CC;
        text-decoration: none;
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        font-size:20px
    }
    .gs-visibleUrl {
        color:#CC99FF;
        text-decoration: none;
    }
    .gs-domain {
        color:#009933;
        text-decoration: none;
    }
    .gs-result {
        font: 12px Tahoma, Geneva, sans-serif;
    }
    .gscresults {
        margin-right: 5px;
        border: 1px solid #DDD;
        padding: 2px 5px 2px 5px;
    }

</style>
--%>
<html>
    <%--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    --%>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Search Page</title>
    </head>
    <body>
        <%
           // String p = "homepage";
           // session.setAttribute("HOME", p);
        %>
        <div class="wrapper">
            <div class="nav_bar">
                <ul>
                 
                </ul>
            </div>
            <div class="container_main">
                <div class="logo"><img src="logo.png" alt="Google Logo"></div>
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
        <%--
        <div class="container">
            <nav id="nav">
                <ul>
                    <li>Web Crawler and Search Engine in Java using JSoup! </li>
                    <li>|</li>
                    <li>Project Done By: P.Pavitrakumar</li>
                </ul>
            </nav>
            <img src="logo.png" alt="Google" />
            <form action ="dispRows" method = "POST">
                <input type ="text" name ="keyword" style="width:550px;height: 25px;border: 1px solid #3492F7;margin:20px auto;display:block;">
                <input type="submit" value="Google Search" style="width:150px;height: 25px;margin:20px auto;display:block;background-color:#fff;background-image:none;color:#333;font-size:14px;line-height:20px;max-width:100%;">
                
            </form>
            <div class ="gsc-result-info">${count} results found</div>
            <table>   
                <c:forEach var="result" items="${result}">  
                    <br>
                    <div class="gs-title">${result.getTitle()}</div>
                    <div class="gs-domain">${result.getDomain()}</div>
                    <div class="gs-visibleUrl"><a href = "${result.getURL()}">${result.getURL()}</a></div>
                    <br>
                    <div class="gscresults"></div>
                    <br>
                </c:forEach>  
            </table>
        </div>
        --%>
    </body>
</html>