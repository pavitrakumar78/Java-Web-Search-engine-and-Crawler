package Pack1;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import java.net.URL;
//SERVLET: html in java
//JSP: java in html

/**
 *
 * @author pavitrakumar
 */
@WebServlet(urlPatterns = {"/dispRows"})

public class dispRows extends HttpServlet {

    public static void dispVar(int a) {
        System.out.println(a);
    }

    public String getDomain(String url) {
        try {
            String cleanUrl = url.toLowerCase().trim();
            URL link = new URL(cleanUrl);
            String domain = link.getHost();
            System.out.println(domain);
            return domain;
        } catch (Exception e) {
            e.printStackTrace();
            return "DomainNotFound";
        }
    }

    public String keyword = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        process(req, resp);
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("SearchResults.jsp");

        response.setContentType("text/html");
        System.out.println(request.getContextPath());

        keyword = request.getParameter("keyword");
        //System.out.println("----->" + keyword);
        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost/jproject";

        String USER = "root";
        String PASS = "password";

        Statement stmt = null;
        Connection conn = null;
        ArrayList<String> url_list = new ArrayList<String>();
        try {
            long startTime = System.nanoTime();
            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            stmt = conn.createStatement();
            String sql;
            //sql = "SELECT URL,Title FROM crawler_db where Title like '%" + keyword + "%' order by PageRank;";
            sql = "select URL,Title from crawler_db where match(Title) against('" + keyword + "')";
            ResultSet rs = stmt.executeQuery(sql);
            ArrayList<searchResult> result = new ArrayList<searchResult>();
            int count = 0;
            while (rs.next()) {
                searchResult sr = new searchResult();
                String url = rs.getString("URL");
                url_list.add(url);
                String url_title = rs.getString("Title");
                sr.setTitle(url_title);
                sr.setURL(url);
                sr.setDomain(getDomain(url));
                result.add(sr);
                System.out.println(url + url_title);
                count++;
            }
            long endTime = System.nanoTime() - startTime;
            String str = endTime / Math.pow(10, 9) + "";
            request.getSession().setAttribute("time", str.substring(0, 3));
            request.getSession().setAttribute("count", count);
            request.getSession().setAttribute("result", result);
            //RequestDispatcher rd = request.getRequestDispatcher("/SearchPage.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("/SearchResult.jsp");
            rd.forward(request, response);
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
