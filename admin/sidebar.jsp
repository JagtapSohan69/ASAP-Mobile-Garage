<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String rz=session.getAttribute("uname").toString();

ResultSet rs1=s.stm.executeQuery("select count(v.v_id) as nreq from vendor_details v,login l where v.v_email=l.username and  l.status='requested'");
rs1.next();
int treq=rs1.getInt("nreq");
%>

           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../wfs_temp/user/assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a href="home.jsp"><i class="fa fa-home"></i>Home</a>
                    </li>
					
					
					<!-- <li> 
                        <a  href="bank_details_view.jsp"><i class="fa fa-edit"></i>Bank Details</a>
                     </li>
					 
					 <li> 
                        <a  href="bill_details_view.jsp"><i class="fa fa-edit"></i>Bill Details</a>
                     </li>
					 
					 
					  -->
					 
					 <li> 
                        <a  href="vendor_details_view.jsp"><i class="fa fa-user"></i>Vendor Details &nbsp;&nbsp;&nbsp;&nbsp;<font color="#00CCFF" size="4">[ <%=treq%> ]</font></a>
                     </li>
					 
					  <li> 
                        <a  href="customer_details_view.jsp"><i class="fa fa-users"></i>Customer Details</a>
                     </li>
					 
					  <li> 
                        <a  href="feedback_details_view.jsp"><i class="fa fa-inbox"></i>Feedback Details</a>
                     </li>
					 
					 <!-- <li> 
                        <a  href="garage_details_view.jsp"><i class="fa fa-edit"></i>Garage Details</a>
                     </li> -->
					 
					  <li> 
                        <a  href="notices_view.jsp"><i class="fa fa-info"></i>Notices</a>
                     </li>
					 
					<!--  <li> 
                        <a  href="product_details_view.jsp"><i class="fa fa-edit"></i>Product Details</a>
                     </li>
					 
					  <li> 
                        <a  href="request_details_view.jsp"><i class="fa fa-edit"></i>Request Details</a>
                     </li>
					 
					  <li> 
                        <a  href="services_view.jsp"><i class="fa fa-edit"></i>Services</a>
                     </li> -->
					 
					  
						
					
					 <li> 
                        <a  href="change_pass.jsp"><i class="fa fa-key"></i>Change password</a>
                     </li>
					
					 <li> 
                        <a onClick="return confirm('Are you sure?')" href="../logout.jsp"><i class="fa fa-lock"></i>Logout</a>
                     </li>
                                        
					
                   
								
					</ul>
               
            </div>
            
        </nav> 