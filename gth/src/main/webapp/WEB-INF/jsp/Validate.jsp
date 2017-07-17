<%-- 
    Document   : Validate
    Created on : 17/07/2017, 11:56:00 AM
    Author     : Leandro Burgos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> .:RRHH:.</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="<c:url value='resources/img/favicon/favicon.ico'/>" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <%@include file="../../jspf/general.jspf" %>
        <style>
            #loader {
                position: absolute;
                left: 50%;
                top: 50%;
                z-index: 1;
                width: 150px;
                height: 150px;
                margin: -75px 0 0 -75px;
                border: 16px solid #f3f3f3;
                border-radius: 50%;
                border-top: 16px solid #3498db;
                width: 180px;
                height: 180px;
                -webkit-animation: spin 2s linear infinite;
                animation: spin 2s linear infinite;
            }

            @-webkit-keyframes spin {
                0% { -webkit-transform: rotate(0deg); }
                100% { -webkit-transform: rotate(360deg); }
            }

            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }

            .animate-bottom {
                position: relative;
                -webkit-animation-name: animatebottom;
                -webkit-animation-duration: 1s;
                animation-name: animatebottom;
                animation-duration: 1s
            }

            @-webkit-keyframes animatebottom {
                from { bottom:-100px; opacity:0 } 
                to { bottom:0px; opacity:1 }
            }

            @keyframes animatebottom { 
                from{ bottom:-100px; opacity:0 } 
                to{ bottom:0; opacity:1 }
            }
        </style>
    </head>
    <!--<body onload="myFunction()" style="margin:0;">-->
    <body style="margin:0;">
        <div id="loader"></div>
        <script src="<c:url value='resources/js/libs/jquery-2.1.1.min.js'/>" ></script>        
        <script>
            /*var myVar;
             
             function myFunction() {
             myVar = setTimeout(showPage, 10000);
             }
             
             function showPage() {
             document.getElementById("loader").style.display = "none";
             document.getElementById("myDiv").style.display = "block";
             }*/
            $(document).ready(function () {
                $.getJSON("http://192.168.21.9:8089/TALENTO_HUMANO/webresources/authorization", function (datos) {
                    try {                       
                        var sesion = datos.session;
                        var b = sesion.attributes;
                        var data = "ID_ROL=" + b.IDROL;
                        data += "&ID_MODULO=" + b.MODULO_WS;
                        data += "&IDUSER=" + b.IDUSER;
                        data += "&IDTR=" + b.IDTR;
                        data += "&NOMBRE_AP=" + b.NOMBRE_AP;
                        data += "&PUESTO_ID=" + b.PUESTO_ID;
                        data += "&USER=" + b.USER;
                        var url = "principal";
                        $.post(url, data, function (conf) {
                            if (conf.rs) {
                                location.href="index";
                            }else{
                                location.href="http://192.168.21.9:8089/TALENTO_HUMANO";
                            }
                        });
                    } catch (e) {
                        console.log("Error : " + e);
                    }
                });
            });
        </script>

    </body>
</html>
