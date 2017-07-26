<%
    HttpSession ss = request.getSession();
    String id_user = (String) ss.getAttribute("IDUSER");
    if (id_user != null) {

%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;overflow-x: hidden">
    <head>
        <meta charset="utf-8">
        <title> .:GTH:.</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="<c:url value='resources/img/favicon/favicon.ico'/>" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="<c:url value='resources/css/Css_Modulos/component.css'/>" />
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/font-awesome.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
    </head>
    <body>
        <header id="header" style="background: #424242;">
            <div id="logo-group" >
                <span id="logo"> <img src="<c:url value='resources/img/logoRRHH.png'/>" style=" position: absolute;top: 6px; width:130px; height:36px " alt="GTH"> </span>
            </div>
            <div class="pull-right">
                <!-- logout button -->
                <div id="logout" class="btn-header transparent pull-right">
                    <span> 
                        <a class="btn btn-danger" href="menu?opc=logout" title="Sign Out" data-action="userLogout" data-logout-msg="¿Está complemetamente seguro de cerrar sesión?">
                            <i class="fa fa-sign-out"></i>
                            Salir
                        </a> 
                    </span>
                </div>
            </div>
        </header>
        <br>
        <br>
        <div class="text-center">
            <h1><span class="semi-bold">Gestión de</span> <i class="ultra-light">Talento Humano</i> <sup class="badge bg-color-red bounceIn animated"> v 3.0</sup> <br>
            </h1>
        </div>
        <div class="col col-md-12 col-md-offset-3">	
            <br>
            <br>
            <nav id="menu" class="nav"  >	
                <ul class="slideInLeft" id="contMod" >
                </ul>
            </nav>
        </div>

        <%@include file="../../jspf/scripts.jspf" %> 

        <script src="<c:url value='resources/js/modernizr.custom.js'/>" type="text/javascript"></script>
        <script>
            var changeClass = function (r, className1, className2) {
                var regex = new RegExp("(?:^|\\s+)" + className1 + "(?:\\s+|$)");
                if (regex.test(r.className)) {
                    r.className = r.className.replace(regex, ' ' + className2 + ' ');
                } else {
                    r.className = r.className.replace(new RegExp("(?:^|\\s+)" + className2 + "(?:\\s+|$)"), ' ' + className1 + ' ');
                }
                return r.className;
            };

            var menuElements = document.getElementById('menu');
            menuElements.insertAdjacentHTML('afterBegin', '<button type="button" id="menutoggle" class="navtoogle" aria-hidden="true"><i aria-hidden="true" class="icon-menu"> </i> Menu</button>');

            document.getElementById('menutoggle').onclick = function () {
                changeClass(this, 'navtoogle active', 'navtoogle');
            };

            document.onclick = function (e) {
                var mobileButton = document.getElementById('menutoggle'),
                        buttonStyle = mobileButton.currentStyle ? mobileButton.currentStyle.display : getComputedStyle(mobileButton, null).display;

                if (buttonStyle === 'block' && e.target !== mobileButton && new RegExp(' ' + 'active' + ' ').test(' ' + mobileButton.className + ' ')) {
                    changeClass(mobileButton, 'navtoogle active', 'navtoogle');
                }
            };

            function listarModulos() {
                var url = "components";
                var data = "opc=modulos";
                $.getJSON(url, data, function (objJson) {
                    var list = objJson.lista;
                    var s = "";
                    if (list.length > 0) {
                        for (var i = 0; i < list.length; i++) {
                            var idmod = list[i].ID_MODULO;
                            var nom = list[i].NO_MODULO;
                            var ico = list[i].IC_MODULO;
                            s += createModulo(idmod, nom, ico);
                        }
                        $("#contMod").empty();
                        $("#contMod").append(s);
                    }
                });
            }
            $(document).ready(function () {
                listarModulos();
            });

            function createModulo(idmodulo, nombre, icon) {
                var m = idmodulo.split("-");
                var n = parseInt(m[1]);
                var s = '<li class="bounceIn animated">';
                s += '<form>';
                s += '<a onclick="enterMod(' + n + ')"  href="#" style="text-decoration: none;font-size:20px " >';
                s += '<span class="icon">';
                s += '<i aria-hidden="true" class="' + icon + '"></i>';
                s += '</span>';
                s += '<span>' + nombre + '</span>';
                s += '</a>';
                s += '</form>';
                s += '</li>';
                return s;
            }

            function enterMod(a) {
                var m = a.toString();
                var id;
                if (m === "10"||m === "11") {
                    id = "MOD-00" + m;
                } else {
                    id = "MOD-000" + m;
                }
                try {
                    $.get("components?opc=redMod", "idmod=" + id, function (objJson) {
                        if (objJson.rpta) {
                            location.href = 'index';
                        }
                    });
                } catch (e) {
                    console.error(e);
                }
            }
        </script>
    </body>
</html>
<%} else {
        out.print("<script> window.location.href = '/gth/';</script>");
    }


%>