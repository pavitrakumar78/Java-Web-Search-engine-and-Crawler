<%-- 
    Document   : jdbcjstest
    Created on : Mar 20, 2015, 9:57:46 PM
    Author     : pavitrakumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>The Database Table </TITLE>
    </HEAD>

    <BODY>
        <H1>The Database Table </H1>

        <%
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jproject", "root", "pavitrakumar");

            Statement statement = con.createStatement();
            ResultSet resultset
                    = statement.executeQuery("select URL,URL_id from crawler_db");
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>URL</TH>
                <TH>URL_id</TH>
            </TR>
            <% while (resultset.next()) {%>
            <TR>
                <% String lnk = resultset.getString(1);%>
                <TD> <a href = "<%= lnk%>" > <%= lnk%> </a> </TD>
                <TD> <%= resultset.getString(2)%></td>


            </TR>
            <% }%>
        </TABLE>
    </BODY>
</HTML>
