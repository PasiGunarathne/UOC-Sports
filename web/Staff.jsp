<%-- 
    Document   : Staff
    Created on : Mar 27, 2018, 1:59:43 PM
    Author     : Pasindu
--%>

    <jsp:include page="WEB-INF/proheader.jsp"/>
        <%String username = request.getParameter("user"); %>
        
        <h1>Hello <%out.println(username);%>!</h1>
        <a href="Login.jsp">LogOut</a>
        
      <jsp:include page="WEB-INF/footer.jsp"/>
    </body>
</html>
