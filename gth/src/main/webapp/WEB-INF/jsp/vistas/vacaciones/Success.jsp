<%-- 
    Document   : Success
    Created on : 24-jul-2017, 10:50:56
    Author     : Alfa003
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">

    </head>
    <body>
        <h1>Hello World!</h1>
        <label>NOMBRE DEL ARCHIVO:</label>
        <label id="nombre"></label><br>
        <label>EXTENSION DEL ARCHIVO:</label>
        <label id="extension"></label><br>
        <label>RUTA:</label>
        <label id="ruta"></label><br>
        <label>TAMAÑO:</label>
        <label id="size"></label><br>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                 <script type="text/javascript">
            $(document).ready(function (){
                $.post('jarchivos', function (object) {
                            var ar = object;
                            $("#nombre").text(ar[0]);
                            $("#extension").text(ar[2]);
                            $("#ruta").text(ar[1]);
                            $("#size").text(ar[3]+" "+"bytes");
                         
                        });
            })
        
         </script>

    </body>
</html>
