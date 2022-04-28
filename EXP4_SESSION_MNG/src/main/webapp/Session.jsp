<%@ page import = "java.io.*,java.util.*" %>
<%
   Date createTime = new Date(session.getCreationTime());
   Date lastAcc = new Date(session.getLastAccessedTime());

   if (session.isNew() ){
      session.setAttribute("userID", "userID");
      session.setAttribute("visitCount",  0);
   } 
   
   int visitCount = 0;
   visitCount = (Integer)session.getAttribute("visitCount");
   visitCount = visitCount + 1;
   
   session.setAttribute("visitCount",  visitCount);
   
%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h1>Session Tracking</h1>      
      <table border = "1" align = "center"> 
         <tr bgcolor = "#949494">
            <th>Session info</th>
            <th>Value</th>
         </tr> 
         <tr>
            <td>id</td>
            <td><% out.print(session.getId()); %></td>
         </tr> 
         <tr>
            <td>Creation Time</td>
            <td><% out.print(createTime); %></td>
         </tr> 
         <tr>
            <td>Last Accessed Time</td>
            <td><% out.print(lastAcc); %></td>
         </tr> 
         <tr>
            <td>User ID</td>
            <td><% out.print("userID"); %></td>
         </tr> 
         <tr>
            <td>Number of visits</td>
            <td><% out.print(visitCount); %></td>
         </tr> 
      </table> 

</body>
</html>