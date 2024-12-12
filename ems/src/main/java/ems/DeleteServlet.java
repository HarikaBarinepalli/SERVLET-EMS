package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  String id=req.getParameter("id");
	  int eid= Integer.parseInt(id);
//	      int id=Integer.parseInt(req.getParameter("id"));//this way also write
	      try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Root");
			PreparedStatement ps=con.prepareStatement("delete from emp where id=?");
			ps.setInt(1, eid);
			int row=ps.executeUpdate();
			System.out.println(row+"row deleted.....");
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	      
	      PrintWriter pw=resp.getWriter();
	      pw.write("<html><body><h1 id='msg'>Employee Deleted Successfully with Id:"+id+"</h1></body></html>");
//	      RequestDispatcher rd= req.getRequestDispatcher("allemp.jsp");
//	      rd.include(req, resp);
	  
	      try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Root");
			Statement s= con.createStatement();
			  ResultSet rs=s.executeQuery("select * from emp");
			  req.setAttribute("rs", rs);
			  RequestDispatcher rd= req.getRequestDispatcher("allemp.jsp");
	          rd.include(req, resp);
			  
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
}
}
