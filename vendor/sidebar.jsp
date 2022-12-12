<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from vendor_details where v_email='"+rz+"'");
rs.next(); 
%>
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../uploads/<%=rs.getString("v_profilepic")%>" class="user-image img-responsive"/>
					</li>
				
<%
ResultSet rs1=s.stm.executeQuery("select count(n.n_id) as nntc from notices n,vendor_details v where v.v_id=n.n_to and n.n_status='New' and v.v_email='"+rz+"'");
rs1.next();
int tnt=rs1.getInt("nntc");

ResultSet rs2=s.stm.executeQuery("select count(f.fd_id) as nfd from feedback_details f,vendor_details v where v.v_email=f.fd_to and f.status='New' and v.v_email='"+rz+"'");
rs2.next();
int tfd=rs2.getInt("nfd");

ResultSet rs3=s.stm.executeQuery("select count(r.r_id) as nrq from request_details r,vendor_details v,garage_details g where r.g_id=g.g_id and v.v_id=g.v_id and r.r_status='Requested' and v.v_email='"+rz+"'");
rs3.next();
int treq=rs3.getInt("nrq");

ResultSet rs4=s.stm.executeQuery("select count(o.o_id) as tor from order_details o,garage_details g,vendor_details v where v.v_id=g.v_id and o.o_gid=g.g_id and v.v_email='"+rz+"' and o_status='Ordered'");
rs4.next();
int tor=rs4.getInt("tor");

%>					
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
                        <a  href="garage_details_view.jsp"><i class="fa fa-cog"></i>Garage Details</a>
                     </li>
					 
					  <li> 
                        <a  href="services_view.jsp"><i class="fa fa-list"></i>Services</a>
                     </li>
					 
					  <li> 
                        <a  href="product_details_view.jsp"><i class="fa fa-list"></i>Product Details</a>
                     </li>
					 
					  <li> 
                        <a  href="o_view.jsp"><i class="fa fa-list"></i>Orders Details &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFF33" size="4">[ <%=tor%> ]</font></a>
                     </li>
					 
					  <li> 
                        <a  href="bill_details_view.jsp"><i class="fa fa-inr"></i>Bill Details</a>
                     </li>
					 
					  <li> 
                        <a  href="request_details_view.jsp"><i class="fa fa-star"></i>Requests &nbsp;&nbsp;&nbsp;&nbsp;<font color="#99CC00" size="4">[ <%=treq%> ]</font></a>
                     </li>
					 
					
					 
					<!--  <li> 
                        <a  href="customer_details_view.jsp"><i class="fa fa-edit"></i>Customer Details</a>
                     </li> -->
					 
					  <li> 
                        <a  href="readfd.jsp"><i class="fa fa-inbox"></i>Feedbacks &nbsp;&nbsp;&nbsp;&nbsp;<font color="#00CCFF" size="4">[ <%=tfd%> ]</font></a>
                     </li>
					 
					 
					  <li> 
                        <a  href="readnt.jsp"><i class="fa fa-info"></i>Notices &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFCC00" size="4">[ <%=tnt%> ]</font></a>
                     </li>
					 
					 
					 <!-- <li> 
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