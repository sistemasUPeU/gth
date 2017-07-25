<%-- 
    Document   : Success
    Created on : 24-jul-2017, 10:50:56
    Author     : Alfa003
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">

    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>${archi}</h1>
        <c:forEach items="${archi}" var="archivo"></c:forEach>
           
            <div class="row">
                <div class="col-md-8">
                    <h2>Uploaded File Details</h2>
                    <c:forEach items="${archi}" var="file">
                        <div class="row" style="border:1px solid #ccc; margin:5px;">
                            <div class="col-md-4">
                                <b><c:out value="${file.name}" /></b>
                            </div>
                            <div class="col-md-4">
                                <c:out value="${file.path}" />
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        
    </body>
</html>
