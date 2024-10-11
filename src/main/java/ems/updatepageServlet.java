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

import com.mysql.cj.protocol.Resultset;

@WebServlet(urlPatterns = "/updatepage")
public class updatepageServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
			PreparedStatement ps=con.prepareStatement("select * from emp where id=?");
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				req.setAttribute("rs", rs);
				RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
				rd.forward(req, resp);
			}
//			while(rs.next()) {
//				
//				System.out.println(rs.getInt(1));
//				System.out.println(rs.getString(1));
//				System.out.println(rs.getString(1));
//				System.out.println(rs.getString(1));
//				System.out.println(rs.getInt(1));
//				
//				
//			}
			
		} catch (ClassNotFoundException | SQLException e) {
																					
			e.printStackTrace();
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("select * from emp");
			req.setAttribute("rs", rs);
			RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
			rd.forward(req, resp);
			rs.close();
			s.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

		
		}
}
