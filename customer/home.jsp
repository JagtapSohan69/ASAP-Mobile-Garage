<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
  <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Dashboard</h2>   
                        
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />


<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();

ResultSet rs1=s.stm.executeQuery("select count(g_id) as tg from garage_details");
rs1.next();
int tg=rs1.getInt("tg");

ResultSet rs2=s.stm.executeQuery("select count(c_id) as tc from customer_details");
rs2.next();
int tc=rs2.getInt("tc");

ResultSet rs3=s.stm.executeQuery("select count(fd_id) as tf from feedback_details where fd_from='"+rz+"'");
rs3.next();
int tf=rs3.getInt("tf");

ResultSet rs4=s.stm.executeQuery("select sum(b.b_amount) as tpd from bill_details b,customer_details c where b.c_id=c.c_id and c.c_email='"+rz+"'");
rs4.next();
int tpd=rs4.getInt("tpd");

%>

                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-cog"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tg%>
				  </p>
                    <p class="main-text" style="font-size:18px">Garage's</p>
                </div>
             </div>
		     </div>
			 
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
               <a href="#"> <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-users"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tc%>
				  </p>
                    <p class="main-text" style="font-size:18px">Customers</p>
                </div>
             </div>
		     </div>
			 
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
               <a href="#"> <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-inbox"></i>
                </span></a>
                <div class="text-box" >
                  <p class="main-text">
					<%=tf%>
				 </p>
                    <p class="main-text" style="font-size:18px"> Feedback </p>
                </div>
             </div>
		     </div>
			 
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
               <a href="#"> <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-inr"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tpd%>
				  </p>
                    <p class="main-text" style="font-size:18px">Payment</p>
                </div>
             </div>
		     </div>
			 <div align="center"><img src="../wfs_temp/img/customer.png" width="90%"/></div>
			</div>
                 <!-- /. ROW  -->
                 
                    
                    
                 
<jsp:include page="footer.jsp"></jsp:include>
<%
}
else
{
out.println("<script>alert('Your Session Expired');document.location='../index.jsp';</script>");
}
%>