<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	color: #0000FF;
}
body {
	background-color: #99CCFF;
}
#Layer1 {
	position:absolute;
	width:200px;
	height:107px;
	z-index:1;
	left: 1068px;
	top: 261px;
}
.style3 {font-size: 18px; color: #0000FF; }
.style9 {color: #666666; }

-->
</style>

 <script type = "text/javascript">
    
      </script>
</head>
<body onload="changeImage()">
<form id="form1" name="form1" method="post" action="Register">
  <div align="center">
  <img src="images/interview-checklist-large.jpg" id="img" alt="Mountain View" style="width:1000px;height:230px;"/>
  </div>
  <p align="center" class="style1">INTERVIEW SCORE </p>
 
  
  <div class="style3" id="Layer1">
  <div align="center">
    <a href="index.jsp">LOGOUT</a></div>
  </div>
  <div align="center">
    <table width="443" height="251" bgcolor="#FFFFFF">
      <tr>
        <td width="205"><div align="center">INTERVIEWER NAME </div></td>
        <td width="17"><div align="center">:</div></td>
        <td width="199"><div align="center"><%=session.getAttribute("user")%></div></td>
      </tr>
      <tr>
        <td><div align="center">ROLL NO </div></td>
        <td><div align="center">:</div></td>
        <td><div align="center">
          <label>
          <input name="t1" type="text" id="t1" />
          </label>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">CANDIDATE NAME </div></td>
        <td><div align="center">:</div></td>
        <td><div align="center">
          <input name="t2" type="text" id="t2" />
        </div></td>
      </tr>
      <tr>
        <td><div align="center">SCORE</div></td>
        <td><div align="center">:</div></td>
        <td><div align="center">
          <label>
          <select name="t3" id="t3">
            <option>SELECT RATE</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
          </label>
        </div></td>
      </tr>
      <tr>
        <td colspan="3"><div align="center">
          <label>
          <input name="b1" type="submit" id="b1" value="ENTER" />
          </label>
        </div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <table width="600" border="1">
      <tr>
        <td width="110" height="38" style="background-color:#FFFFFF"><div align="center" class="style9">ROLL NO </div></td>
        <td width="280" style="background-color:#FFFFFF"><div align="center" class="style9">CANDIDATE NAME </div></td>
        <td width="151" style="background-color:#FFFFFF"><div align="center" class="style9">INTERVIEWER1</div></td>
        <td width="20" style="background-color:#FFFFFF"><div align="center" class="style9">INTERVIEWER2</div></td>
        <td width="5" style="background-color:#FFFFFF"><div align="center" class="style9">INTERVIEWER3</div></td>
      </tr>
      <tr>
      <% 
      session.setAttribute("name",session.getAttribute("user"));
              Class.forName("com.mysql.jdbc.Driver");  
              Connection con1= DriverManager.getConnection("jdbc:mysql://127.4.96.130:3306/interview","adminrTbSGI5","qNt86N8BW32V");  
            Statement stmt1 = con1.createStatement();  
 
           ResultSet rs=stmt1.executeQuery("select * from score");
           while(rs.next()){
               
           
              %>
        <td><div align="center"><%=rs.getString("roll") %></div></td>
        <td><div align="center"><%=rs.getString("name") %></div></td>
        <td><div align="center"><%=rs.getString("inv1") %></div></td>
        <td><div align="center"><%=rs.getString("inv2") %></div></td>
        <td><div align="center"><%=rs.getString("inv3") %></div></td>
      </tr>
      <%} %>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
 
</form>
</body>
</html>

