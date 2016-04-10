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
<form id="form1" name="form1" method="post" action="">
  <div align="center">
  <img src="images/job-interview.jpg" id="img" alt="Mountain View" style="width:1000px;height:230px;"/>
  </div>
  <p align="center" class="style1">CANDIDATE RANK </p>
 
  
  <div class="style3" id="Layer1">
  <div align="center">
    <a href="index.jsp">LOGOUT</a></div>
  </div>
  <div align="center">
    <table width="443" height="251" bgcolor="#FFFFFF">
	 <% 
        String s=request.getParameter("t1");
              Class.forName("com.mysql.jdbc.Driver");  
              Connection con1= DriverManager.getConnection("jdbc:mysql://127.4.96.130:3306/interview","adminrTbSGI5","qNt86N8BW32V");  
            Statement stmt1 = con1.createStatement();  
 
           ResultSet rs=stmt1.executeQuery("select s.ROLL,s.NAME,s.INV1+s.INV2+s.INV3 as TOTAL_SCORE, t1.RANK from score s join (Select SCORE,@rownum:=@rownum + 1 as RANK from (select distinct INV1+INV2+INV3 as SCORE from score) as T,(select @rownum:=0) as r) as t1 where (s.INV1+s.INV2+s.INV3)=t1.SCORE and s.ROLL='"+s+"'");
           while(rs.next()){
               
           
              %>
      <tr>
        <td width="205"><div align="center">CANDIDATE NAME </div></td>
        <td width="17"><div align="center">:</div></td>
        <td width="199"><div align="center"><%=rs.getString("NAME") %></div></td>
      </tr>
      <tr>
        <td><div align="center">ROLL NO </div></td>
        <td><div align="center">:</div></td>
        <td><div align="center">
          <%=rs.getString("ROLL") %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">TOTAL SCORE </div></td>
        <td><div align="center">:</div></td>
        <td><div align="center"><%=rs.getString("TOTAL_SCORE") %></div></td>
      </tr>
      <tr>
        <td><div align="center">RANK</div></td>
        <td><div align="center">:</div></td>
        <td><div align="center">
          <%=rs.getString("RANK") %>
          <%} %>
        </div></td>
      </tr>
    </table>
   
  </div>
 
</form>
</body>
</html>

