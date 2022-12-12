<title>Loggedout....</title>
<%
session.removeAttribute("uname");
session.invalidate();
%>
<script>
alert("Loggedout Succesfully");
document.location="index.jsp";
</script>