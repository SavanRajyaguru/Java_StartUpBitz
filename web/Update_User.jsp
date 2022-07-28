<%-- 
    Document   : Update_User
    Created on : Mar 17, 2022, 6:17:28 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            try{
                String uname = request.getParameter("uname");
                String email = request.getParameter("email");
                String pass = request.getParameter("pass");
                
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                int i = 0;
                PreparedStatement c = cn.prepareStatement("select email from user_people where email=?");
                    c.setString(1,email);
                    ResultSet rs1 = c.executeQuery();
                    while(rs1.next())
                    { i++;}
                    if(i >= 2){
                        %> 
                            <script> 
                                alert('Duplicate Email Address Found!');
                                window.location.href = "signup_user.jsp";
                            </script>
                        <%
                    }else{
                PreparedStatement ps = cn.prepareStatement(
                        "update user_people set user_name=?, password=?, email=? where uid="+session.getAttribute("uid"));
                
                ps.setString(1, uname);
                ps.setString(2, pass);
                ps.setString(3, email);
                
                int result = ps.executeUpdate();
                
                if(result == 1){
                    
                    PreparedStatement ps1 = cn.prepareStatement(
                        "update login set pass=?, email=? where rid="+session.getAttribute("uid")+" and role='u'");
                
                    ps1.setString(1, pass);
                    ps1.setString(2, email);

                    int result1 = ps1.executeUpdate();
                    if(result1 == 0){
                        out.print("Data Not update in Login Table!");
                    }
                    %>
                    <script>
                            alert('Update Successfully!');
                            window.location.href = "homePage_User.jsp";
                    </script>
                        <%--<jsp:forward page="homePage_User.jsp" />--%>
                    <%
                }
                else{
                    out.print("Data Not Update!");
                }
            }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
