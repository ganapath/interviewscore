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
.style2 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}

-->
</style>

 <script type = "text/javascript">

  
 function GetTextBox(){
   
    var val=document.getElementById('r1').value;
    if(document.getElementById('r1').checked & val=="candidate")
    {
       
            d1.innerHTML='ROLL NO : '+'<input name = "t1" type="text" id="t1" />' +
            '<input type="submit" id="s1" name="s1" value="GO" />';
              
             }
           
           else {
               d1.innerHTML='INTERVIEWER ID : '+'<input name = "t1" type="text" id="t1" />' +
            '<input type="submit" id="s1" name="s1" value="GO" />';

                }
			}

    
      </script>
</head>
<body onload="changeImage()">
<form id="form1" name="form1" method="post" action="Login">
  <div align="center">
  <img src="images/interview.jpg" id="img" alt="Mountain View" style="width:1000px;height:230px;"/>
  </div>
  <p align="center" class="style1">PLACEMENT CELL </p>
  <div align="center">
    <table width="388" height="257"  bgcolor="#FFFFFF">
      <tr>
        <td height="61"><div align="center" class="style2">LOGIN CREDENTIALS </div></td>
      </tr>
      <tr>
        <td height="44"><div align="center">
          &nbsp;<label>
          <input name="r1" id="r1" type="radio" value="candidate" onclick="GetTextBox()"/>
          </label>
        CANDIDATE</div></td>
      </tr>
      <tr>
        <td height="46"><div align="center">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="r1" id="r1" type="radio" value="interview" onclick="GetTextBox()"/>
        INTERVIEWER</div></td>
      </tr>
      <tr>
        <td><div align="center" id="d1"> 
          
        </div></td>
      </tr>
      </table>
  </div>
<div>
                <h3 style="color: green; margin-top: 80px" align="center"><%String s=(String)request.getAttribute("Message");if(s!=null){out.println(s);}else{out.println("");}%></h3>
          </div>
</form>
</body>
</html>
