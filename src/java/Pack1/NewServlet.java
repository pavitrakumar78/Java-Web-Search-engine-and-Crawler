package Pack1;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

//SERVLET: html in java
//JSP: java in html
/**
 *
 * @author pavitrakumar
 */
@WebServlet(urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }*/

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost/jproject";
        //  Database credentials
        String USER = "root";
        String PASS = "pavitrakumar";

        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Database Result";
        String docType
                = "<!doctype html public \"-//w3c//dtd html 4.0 "
                + "transitional//en\">\n";

        out.println(docType + "<html>\n"
                + "<head><title>" + title + "</title></head>\n"
                + "<body bgcolor=\"#f0f0f0\">\n"
                + "<h1 align=\"center\">" + title + "</h1>\n");
        Statement stmt = null;
        Connection conn = null;
        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
             conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Execute SQL query
             stmt = conn.createStatement();
            String sql;
            sql = "SELECT URL,URL_id FROM crawler_db";
            ResultSet rs = stmt.executeQuery(sql);

            // Extract data from result set
            while (rs.next()) {
                //Retrieve by column name
                String url = rs.getString("URL");
                String url_id = rs.getString("URL_id");

                //Display values

                out.println("URL: " + url + "<br>");
                out.println("URL_id: " + url_id + "<br>");
            }
            out.println("</body></html>");

            // Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        } //end try
    }

   // processRequest(request, response);
}


/**
 * Handles the HTTP <code>POST</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
//@Override
       // protected void doPost(HttpServletRequest request, HttpServletResponse response)
     //       throws ServletException, IOException {
    //    processRequest(request, response);
   // }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   // @Override
       // public String getServletInfo() {
      //  return "Short description";
   // }// </editor-fold>



