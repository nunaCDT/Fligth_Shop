<%-- 
    Document   : registerSubmit
    Created on : 14.07.2019, 22:11:05
    Author     : Surattana
--%>

<%@page import="our.flight.main.Customer"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.Properties"%>
<%@page import="our.flight.main.FlightSessionBeanRemote"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/css/main.css" />
        <link rel="stylesheet" href="resources/css/search.css" />

        <title>Register</title>
    </head>
    <body>
        <%

            FlightSessionBeanRemote mrBean = null;
            Properties props;
            InitialContext ctx;
            {
                props = new Properties();
                try {
                    props.load(new FileInputStream("jndi.properties"));
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }

            try {
                ctx = new InitialContext(props);
                mrBean = (FlightSessionBeanRemote) ctx.lookup("FlightSessionBean/remote");

            } catch (Exception ex) {
                out.println("NamingException" + ex);
                out.println("<br>NamingException" + ex);
            }
            Customer cust = new Customer();
            List<Customer> custList = mrBean.getCustomers();

            String nname = request.getParameter("nname");
            String vname = request.getParameter("vname");
            String email = request.getParameter("email");
            String tel = request.getParameter("phone");
            String usr = request.getParameter("u");
            String p = request.getParameter("p");
            String p1 = request.getParameter("p1");
            String welcomeName = "test";

            //String tmpCust;
            cust.setNname(nname);
            cust.setVname(vname);
            cust.setEmail(email);
            cust.setTel(tel);
            cust.setUname(usr);
            cust.setPw(p);
      
            
            if (p.equals(p1)) 
            {
                 mrBean.addCustomer(cust);   //if (custList.get(i).getPw().equalsIgnoreCase(p)&& custList.get(i).getPw().equalsIgnoreCase(p1)) {
                 welcomeName=vname;
                 
            }
            else if (welcomeName == "test") 
            {
                response.sendRedirect("registerForm.jsp");
                return;
            }
         

        %>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="home.jsp">DBP Flight Shop</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="about.jsp">ABOUT</a></li>
                        <li><a href="services.jsp">SERVICES</a></li>
                        <li><a href="#portfolio">PORTFOLIO</a></li>
                        <li><a href="contact.jsp">CONTACT</a></li>
                    </ul>
                </div> 
            </div> 
        </nav>
    </nav>
    <div class="jumbotron text-center">
        <h2>Welcome <% out.println(welcomeName);%></h2>
        <h2>your registration is successful :)</h2>
        <center><a href="login.jsp"><h4>click hier to login in DBP Flight Shop...</h4></a></center>
    </div>
    <br><br>
    <div class="footer">
        <footer class="container-fluid text-center">
            <a href="#home.jsp" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <p>&copy; Copyright D.Porter, E.Dicu, N.Bopp - <a href="https://www.dbpflightshop.de" title="Visit us">www.dbpflightshop.de</a></p> 
        </footer>
    </div>
</body>
</html>

