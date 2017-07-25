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
        <label id="nombre">text</label>
        <%--<h1>${archi}</h1>
        
        <c:forEach items="${archi}" var="archivo"></c:forEach>--%>
        <script type="text/javascript">
            $(document).ready(function (){
                $.post('archivos', function (archi) {
                            console.log(archi);
                            var ar = archi[0];
                            $("#nombre").text(ar);


                        });
            })
         </script>
                 <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
                 <script>
                                                                    if (!window.jQuery.ui) {
                                                                        document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
                                                                    }
        </script>

    </body>
</html>
