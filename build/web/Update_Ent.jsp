<%-- 
    Document   : Update_Ent
    Created on : Mar 17, 2022, 6:17:10 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Ent</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            try{
                String uname = request.getParameter("uname");
                String email = request.getParameter("email");
                String pass = request.getParameter("pass");
                String cname = request.getParameter("cname");
                String url = request.getParameter("url");
                String about = request.getParameter("about");
                String investor = request.getParameter("investor");
                String funding = request.getParameter("funding");
                String industry = request.getParameter("industry");
                String country = request.getParameter("country");
                String city = request.getParameter("city");
                String date = request.getParameter("date");
                
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                int i = 0;
                PreparedStatement c = cn.prepareStatement("select email from user_ent where email=?");
                    c.setString(1,email);
                    ResultSet rs1 = c.executeQuery();
                    while(rs1.next())   
                    {
                        ++i;
                    }
                    if(i >= 2){
                        %> 
                            <script> 
                                alert('Duplicate Email Address Found!');
                                window.location.href = "signup_ent.jsp";
                            </script>
                        <%
                    }
                    else{
                PreparedStatement ps = cn.prepareStatement(
                        "update user_ent set user_name=?, password=?, email=?, company_name=?, url=?, about=?, investor_name=?, total_funding=?, industry=?, city=?, country=?, founded_year=?"
                                + "where eid="+session.getAttribute("eid"));
                
                ps.setString(1, uname);
                ps.setString(2, pass);
                ps.setString(3, email);
                ps.setString(4, cname);
                ps.setString(5, url);
                ps.setString(6, about);
                ps.setString(7, investor);
                ps.setString(8, funding);
                ps.setString(9, industry);
                ps.setString(10, city);
                ps.setString(11, country);
                ps.setString(12, date);
                
                int result = ps.executeUpdate();
                
                if(result == 1){
                    PreparedStatement ps1 = cn.prepareStatement(
                        "update login set pass=?, email=? where rid="+session.getAttribute("eid")+" and role='e'");
                
                    ps1.setString(1, pass);
                    ps1.setString(2, email);

                    int result1 = ps1.executeUpdate();
                    if(result1 == 0){
                        out.print("Data Not update in Login Table!");
                    }
                    
                    %>
                    <script>
                            alert('Update Successfully!');
                            window.location.href = "homePage_Ent.jsp";
                    </script>
                        <%--<jsp:forward page="homePage_Ent.jsp" />--%>
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
