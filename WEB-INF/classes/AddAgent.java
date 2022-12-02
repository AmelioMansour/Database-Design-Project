import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class AddAgent extends HttpServlet 
{
  private PreparedStatement pstmt;
  private PreparedStatement pstmt2;
  public void init() throws ServletException {
    initializeJdbc();
  }
  public void doPost(HttpServletRequest request, HttpServletResponse
      response) throws ServletException, IOException  
 {
	response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    String PERSONID = request.getParameter("PERSONID");
    String NAME = request.getParameter("NAME");
    String LICENSENUM = request.getParameter("LICENSENUM");
    try 
	{
      if (PERSONID.length() == 0 || LICENSENUM.length() == 0) {
        out.println("Please: Person ID, Name and License Number are required");
        return; 
    }
    storePerson(PERSONID, NAME);
    storeAgent(LICENSENUM, PERSONID);
    
	out.println("<html><head><title>Agent Registeration Report</title>");	 
	out.print( "<br /><b><center><font color=\"RED\"><H2>Agent Registeration Report</H2></font>");
    out.println( "</center><br />" );
	
	out.println("</head><body>");
	out.println("<center><table border=\"1\">"); 
	out.println("<tr BGCOLOR=\"#cccccc\">");
    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">PERSON ID</td>");
    out.println("<td align = \"justify\"><font face =\"times new roman\"  size=\"4pt\">LICENSENUM</td>");
    out.println("</tr>");
	
	out.println("</table></center>");
		
    out.println(PERSONID + " " + NAME + " " + LICENSENUM +
        " is now added to the Agents table");
	out.println("</body></html>");
    }
    catch(Exception ex) 
	{
      out.println("\n Error: " + ex.getMessage());
    }
    finally 
	{
      out.close(); 
    }
 } 
  private void initializeJdbc() 
  {
    try 
	{
        String driver = "oracle.jdbc.driver.OracleDriver";  
        Class.forName(driver);
		// database URL is the unique identifier of the database on the Internet
		// thin is the oracle server
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
		String user = "CSIPROJECT";
		String password = "mohammed";  
		Connection conn = DriverManager.getConnection(url,user, password);  
		    pstmt = conn.prepareStatement("insert into person " +
        "(PERSONID, NAME) "
         + "values (?, ?)");
        pstmt2 = conn.prepareStatement("insert into agents " +
        "(LICENSENUM, PERSONID) "
         + "values (?, ?)");
    }
    catch (Exception ex) 
	{
      ex.printStackTrace();
    }
  }

  
  private void storePerson(String PERSONID, String NAME) throws SQLException 
 {
    pstmt.setString(1, PERSONID);
    pstmt.setString(2, NAME);
    pstmt.executeUpdate();


 }
 private void storeAgent(String LICENSENUM, String PERSONID) throws SQLException 
 {

    pstmt2.setString(1, LICENSENUM);
    pstmt2.setString(2, PERSONID);    
    pstmt2.executeUpdate();

 }

}