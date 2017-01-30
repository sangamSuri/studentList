<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>Student Barometer</title>
      <!-- Bootstrap Core CSS -->
      <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- MetisMenu CSS -->
      <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
      <!-- Custom CSS -->
      <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
      <!-- Morris Charts CSS -->
      <link href="../vendor/morrisjs/morris.css" rel="stylesheet">
      <!-- Custom Fonts -->
      <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <div id="wrapper">
         <!-- Navigation -->
         <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="index.html">Student Barometer</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
               <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-alerts">
                     <li>
                        <a href="#">
                           <div>
                              <i class="fa fa-comment fa-fw"></i> New Comment
                              <span class="pull-right text-muted small">4 minutes ago</span>
                           </div>
                        </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                        <a href="#">
                           <div>
                              <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                              <span class="pull-right text-muted small">12 minutes ago</span>
                           </div>
                        </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                        <a href="#">
                           <div>
                              <i class="fa fa-envelope fa-fw"></i> Message Sent
                              <span class="pull-right text-muted small">4 minutes ago</span>
                           </div>
                        </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                        <a href="#">
                           <div>
                              <i class="fa fa-tasks fa-fw"></i> New Task
                              <span class="pull-right text-muted small">4 minutes ago</span>
                           </div>
                        </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                        <a href="#">
                           <div>
                              <i class="fa fa-upload fa-fw"></i> Server Rebooted
                              <span class="pull-right text-muted small">4 minutes ago</span>
                           </div>
                        </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                        <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                        </a>
                     </li>
                  </ul>
                  <!-- /.dropdown-alerts -->
               </li>
               <!-- /.dropdown -->
               <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-user">
                     <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                     </li>
                     <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                     </li>
                     <li class="divider"></li>
                     <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                     </li>
                  </ul>
                  <!-- /.dropdown-user -->
               </li>
               <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
            <div class="navbar-default sidebar" role="navigation">
               <div class="sidebar-nav navbar-collapse">
                  <ul class="nav" id="side-menu">
                     <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                           <input type="text" class="form-control" placeholder="Search...">
                           <span class="input-group-btn">
                           <button class="btn btn-default" type="button">
                           <i class="fa fa-search"></i>
                           </button>
                           </span>
                        </div>
                     </li>
                  </ul>
                   <ul class="nav" id="side-menu">
                        <%
 Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sb","root","root");
Statement st = con.createStatement();
 ResultSet rs=st.executeQuery("select colName from collist");
 while(rs.next()){
     System.out.println(rs.getString("colName"));
     %>
     <li><%= rs.getString("colName")%></li>
     <%
 }
                                                %>
                   </ul>
               </div>
               <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
         </nav>
         <div id="page-wrapper">
            <div class="row">
               <div class="col-lg-12 ">
                  <h1 class="page-header">Student Barometer</h1>
               </div>
               <div class="container">
                  <div class="row ">
                     <div class="col-md-6 ">
                        <div class="panel panel-login">
                           <div class="panel-heading">
                              <div class="row">
                                 <div class="col-xs-6">
                                    <a href="#" class="active" id="login-form-link">Login</a>
                                 </div>
<!--                                 <div class="col-xs-6">
                                    <a href="#" id="register-form-link">Register</a>
                                 </div>-->
                              </div>
                              <hr>
                           </div>
                           <div class="panel-body">
                              <div class="row">
                                 <div class="col-lg-12">
                                    <form id="login-form" action="login.jsp" method="post" role="form" style="display: block;">
                                       <div class="form-group">
                                          <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                       </div>
                                       <div class="form-group">
                                          <input type="text" name="usn" id="password" tabindex="2" class="form-control" placeholder="USN Number">
                                       </div>
                                        <div class="form-group">
                                          <select  name="college"  class="form-control" >
                                                <option value="select">Select</option>
                                                <%
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sb","root","root");
 st = con.createStatement();
 ResultSet rs1=st.executeQuery("select colName from collist");
 while(rs1.next()){
     System.out.println(rs1.getString("colName"));
    %>
    <option value="<%= rs1.getString("colName")%>"><%= rs1.getString("colName")%></option>
                                                <%
 }
                                                %>
                                          </select>
                                       </div>
                                       <div class="form-group">
                                          <div class="row">
                                             <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                                             </div>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- /.col-lg-12 -->
            </div>
            
            <!-- END # BOOTSNIP INFO -->
            <!-- BEGIN # MODAL LOGIN -->
            
            <!-- END # MODAL LOGIN -->
         </div>
         <!-- /#page-wrapper -->
      </div>
      <!-- /#wrapper -->
      <!-- jQuery -->
      <script src="../vendor/jquery/jquery.min.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
      <!-- Metis Menu Plugin JavaScript -->
      <script src="../vendor/metisMenu/metisMenu.min.js"></script>
      <!-- Morris Charts JavaScript -->
      <script src="../vendor/raphael/raphael.min.js"></script>
      <script src="../vendor/morrisjs/morris.min.js"></script>
      <script src="../data/morris-data.js"></script>
      <!-- Custom Theme JavaScript -->
      <script src="../dist/js/sb-admin-2.js"></script>
      <script src="../js/feed.js"></script>
   </body>
</html>