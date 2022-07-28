<%-- 
    Document   : Admin_Page
    Created on : Mar 17, 2022, 8:20:34 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Admin Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <h4><a class="navbar-brand" href="#"><b>StartUpBitz</b></a></h4>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
                <li class="nav-item">
                  <a class="nav-link active" href="#">About</a>
                </li>
              </ul>
              <form class="d-flex" action="LogOut.jsp">
                <button class="btn btn-outline-success" type="submit">Log Out</button>
              </form>
            </div>
          </div>
        </nav>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                
                
                Statement st = cn.createStatement();
                
                
                ResultSet rs = st.executeQuery("select company_name,url,about,investor_name,total_funding,industry,city,country,founded_year,eid,verify from user_ent");
                
                while(rs.next()){
                    String cname = rs.getString(1);
                    String url = rs.getString(2);
                    String about = rs.getString(3);
                    String investor = rs.getString(4);
                    String totalFunding = rs.getString(5);
                    String industry = rs.getString(6);
                    String city = rs.getString(7);
                    String country = rs.getString(8);
                    String date = rs.getString(9);
                    
                    %>
                        <section style="margin-top: 20px;">
            <div class="container">
                <div class="card shadow bg-light rounded">
                    <div class="row no-gutters">
                        <div class="col-sm-7">
                            <div class="card-body">
                                <% if(rs.getInt("verify")==0)
                                {%>
                                    <h2 class="card-title"><%out.print(cname);%></h2>
                                    <h4 class="card-title" style="color:red;"> Unverify </h4>
                                <%
                                }else{
                                %>
                                 <h2 class="card-title"><%out.print(cname);%></h2>
                                 <h4 class="card-title" style="color:green;"> Verify </h4>
                                <%
                                }
                                %>
                                <h6><a href="<%out.print(url);%>" target="_blank" class="card-text"><%out.print(url);%></a></h6>
                                <h5><p class="card-text"> <b>About</b></p></h5>
                                <p>
                                    <%out.print(about);%>
                                </p>
                                <h5><p class="card-text"> <b>Investors</b></p></h5>
                                <p>
                                    <%out.print(investor);%>
                                </p>
                                <h5><p class="card-text"> <b>Detail</b></p></h5>
                                <ul>
                                    <li>
                                        <p class="card-text"> <b>Total Funding: </b>$<%out.print(totalFunding);%></p>
                                    </li>
                                    <li>
                                        <p class="card-text"> <b>Industry: </b><%out.print(industry);%></p>
                                    </li>
                                    <li>
                                        <p class="card-text"> <b>City: </b><%out.print(city);%></p>
                                    </li>
                                    <li>
                                        <p class="card-text"> <b>Country: </b><%out.print(country);%></p>
                                    </li>
                                    <li>
                                        <p class="card-text"> <b>Founded Date </b><%out.print(date);%></p>
                                    </li> 
                                    <div style="padding-bottom: 10px;"></div>
                                    <form>
                                    <div class="form-group">
                                                <a href="Verify_Admin.jsp?eid=<%=rs.getString(10)%>">
                                                    <button type="button" class="btn btn-primary" style="margin-right: 50px">Accept</button>
                                                </a>             
                                                <a href="Unverify_Admin.jsp?eid=<%=rs.getString(10)%>">
                                                    <button type="button" class="btn btn-primary" style="margin-left: 50px">Deny</button>
                                                </a>
                                        </div>     
                                    </form>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </section>
                    <%
                }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
