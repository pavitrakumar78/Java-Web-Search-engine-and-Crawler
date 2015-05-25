<%-- 
    Document   : SearchResults
    Created on : Mar 31, 2015, 2:04:44 PM
    Author     : pavitrakumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Pack1.searchResult" %>
<%@ page import="Pack1.dispRows" %>
<!DOCTYPE html>
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
        margin-left: 215px;
        color: #0000CC;
        text-decoration: none;
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        font-size:20px
    }
    .gs-visibleUrl {
        margin-left: 215px;
        color:#CC99FF;
        text-decoration: none;
    }
    .gs-domain {
        margin-left: 215px;
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
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <%

           int count = 0;
        %>
        <div class ="newSearch">
            <img class = "newlogo" src="images/logo-small.png" alt="Google Logo">
            <form action ="dispRows" method = "POST">
                <input type="text" name ="keyword" class = "newsearchbox">
                <input type="submit" value = "Search" class = "test1submit">
            </form>
            <div class ="gsc-result-info">About ${count} results found (${time} seconds)</div>
        </div>
        <div class="container">
            <table>   
                <c:forEach var="result" items="${result}">  
                    <br>
                    <div class="gs-title"><a href = "${result.getURL()}">${result.getTitle()}</a></div>
                    <div class="gs-domain">${result.getDomain()}</div>
                    <div class="gs-visibleUrl"><a href = "${result.getURL()}">${result.getURL()}</a></div>
                    <% 
                        count ++;
                        //System.out.println(count);
                        dispRows.dispVar(count);
                    %>
                    </c:forEach>  
            </table>
        </div>
    </body>
</html>
