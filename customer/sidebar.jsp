<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_email='"+rz+"'");
rs.next(); 
%>
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                     <img src="../uploads/<%=rs.getString("c_profilepic")%>" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a href="home.jsp"><i class="fa fa-home"></i>Home</a>
                    </li>
					
					 <li> 
                        <a  href="my_profile.jsp"><i class="fa fa-user"></i>My Profile</a>
                     </li>
					
					 <li> 
                        <a  href="bank_details_view.jsp"><i class="fa fa-money"></i>Bank Details</a>
                     </li>
					 					  
					  <li> 
                        <a  href="garage_details_view.jsp"><i class="fa fa-edit"></i>Garage Details</a>
                     </li> 
					 
					 <!--<li> 
                        <a  href="services_view.jsp"><i class="fa fa-list"></i>Services</a>
                     </li>
					 
					  <li> 
                        <a  href="product_details_view.jsp"><i class="fa fa-list"></i>Product Details</a>
                     </li> -->
					 
					  <li> 
                        <a  href="request_details_view.jsp"><i class="fa fa-star"></i>Request Details</a>
                     </li>
					 
					 
					 <li> 
                        <a  href="bill_details_view.jsp"><i class="fa fa-inr"></i>Bill Details</a>
                     </li>
					 
					<!--  <li> 
                        <a  href="customer_details_view.jsp"><i class="fa fa-edit"></i>Customer Details</a>
                     </li> -->
					 
					  <li> 
                        <a  href="feedback_details_view.jsp"><i class="fa fa-inbox"></i>Feedbacks</a>
                     </li>
					
					 
					 <!-- <li> 
                        <a  href="notices_view.jsp"><i class="fa fa-edit"></i>Notices</a>
                     </li> -->
					 
					
					 
					<!--  <li> 
                        <a  href="vendor_details_view.jsp"><i class="fa fa-edit"></i>Vendor Details</a>
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