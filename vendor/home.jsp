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
                     <h2>Vendor Dashboard</h2>   
                        
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

ResultSet rs1=s.stm.executeQuery("select count(r.r_id) as nrq from request_details r,vendor_details v,garage_details g where r.g_id=g.g_id and v.v_id=g.v_id and r.r_status='Requested' and v.v_email='"+rz+"'");
rs1.next();
int nrq=rs1.getInt("nrq");

ResultSet rs2=s.stm.executeQuery("select b_amount as tam from bank_details where b_accountholder='"+rz+"'");
rs2.next();
int tam=rs2.getInt("tam");

ResultSet rs3=s.stm.executeQuery("select count(fd_id) as tf from feedback_details where fd_to='"+rz+"'");
rs3.next();
int tf=rs3.getInt("tf");

ResultSet rs4=s.stm.executeQuery("select count(n.n_id) as tn from notices n,vendor_details v where n.n_to=v.v_id and v.v_email='"+rz+"'");
rs4.next();
int tn=rs4.getInt("tn");

%>

                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-info"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=nrq%>
				  </p>
                    <p class="main-text" style="font-size:18px">Requests</p>
                </div>
             </div>
		     </div>
			 
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
               <a href="#"> <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-inr"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tam%>
				  </p>
                    <p class="main-text" style="font-size:18px">Income</p>
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
                    <i class="fa fa-bullhorn"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tn%>
				  </p>
                    <p class="main-text" style="font-size:18px">Notice</p>
                </div>
             </div>
		     </div>
			 <div align="center"><img src="../wfs_temp/img/garage.jpg" width="90%"/></div>
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