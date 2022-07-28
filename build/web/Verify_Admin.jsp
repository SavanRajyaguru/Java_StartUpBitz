<%-- 
    Document   : Varify_Admin
    Created on : Mar 19, 2022, 2:53:07 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                
                
                Statement st = cn.createStatement();
                String eid = request.getParameter("eid");
                
                int result = st.executeUpdate("update user_ent set verify=1 where eid="+eid);
                
                if(result == 1){
                    
                    %>
                            <script> 
//                                alert('Change Email Address!');
                                window.location.href = "Admin_Page.jsp";
                            </script>
                        <%
                }else{
                    
                }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
