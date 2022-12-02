import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class HomesForSale extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException
    {        
			Statement state4 = null;
			ResultSet result = null;
			String query="";        
			Connection con=null; 
            String CITY = request.getParameter("CITY");

		try
		{			
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver()); 
            con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:orcl", "CSIPROJECT", "mohammed");
	       	System.out.println("Congratulations! You are connected successfully.");      
     	}
        catch(SQLException e)
		{	
			System.out.println("Error: "+e);	
		}
		catch(Exception e) 
		{
			System.err.println("Exception while loading  driver");		
		}
	    try 
		{
        	state4 = con.createStatement();
		} 
		catch (SQLException e) 	
		{
			System.err.println("SQLException while creating statement");			
		}
		
		response.setContentType("text/html");
		PrintWriter out = null ;
		try
		{
			out =  response.getWriter();
		}
		catch (IOException e) 
		{
  			e.printStackTrace();
		}
		
		query = "select * from homes where city = '"+CITY+"'";
		
		out.println("<html><head><title>Homes for sale</title>");	 
		out.println("</head><body>");
		
		out.print( "<br /><b><center><font color=\"RED\"><H2>Homes for sale</H2></font>");
        out.println( "</center><br />" );
       	try 
		{ 
			result=state4.executeQuery(query);
	  	}
		catch (SQLException e) 
		{
			System.err.println("SQLException while executing SQL Statement."); 
		}
		out.println("<center><table border=\"1\">"); 
		out.println("<tr BGCOLOR=\"#cccccc\">");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">HOMEID</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">ADDRESS</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">FLOORSPACE</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">FLOORS</td>");
		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">BEDROOMS</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">FULLBATHROOMS</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">HALFBATHROOMS</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">LANDSIZE</td>");
		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">YEARCONSTRUCTED</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">CITY</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">ZIP</td>");
        out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">SCHOOLDISTRICT</td>");

        out.println("</tr>");
		try 
		{ 
            while(result.next()) 
			{ 
		    	out.println("<tr>");
                    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(1)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(2)+"</td>");
                    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(3)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(4)+"</td>");
					out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(5)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(6)+"</td>");
                    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(7)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(8)+"</td>");
					out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(9)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(10)+"</td>");
                    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(11)+"</td>");
		    		out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">"+result.getString(12)+"</td>");
                    out.println("</tr>"); 
			} 
	    }
		catch (SQLException e) 
		{
			System.out.println("Resutset is not connected"); 
		}

		out.println("</table></CENTER>");
		try 
		{ 
   			result.close(); 
			state4.close(); 	
			con.close();
    		System.out.println("Connection is closed successfully.");
 	   	}
		catch (SQLException e) 
		{
			e.printStackTrace();	
		}

  		out.println("</body></html>");
    } 
}

