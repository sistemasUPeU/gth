<%-- 
    Document   : index
    Created on : 13/07/2017, 04:32:12 PM
    Author     : Leandro Burgos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    String id_user = (String) sesion.getAttribute("IDUSER");
    if (id_user != null) {
        String a = sesion.getAttribute("SEXO").toString();
        String sexo = "resources/img/user" + a + ".png";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> .:GTH:.</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="<c:url value='resources/img/favicon/favicon.ico'/>" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <%@include file="../../jspf/general.jspf" %>

    </head>    
    <body class="smart-style-1 fixed-header fixed-footer mainBody">
        <header id="header">
            <div id="logo-group" >
                <span id="logo"> <img src="<c:url value='resources/img/logoRRHH.png'/>" style=" position: absolute;top: 8px; width:100px; height:36px " alt="Talento Humano"> </span>
                <span id="activity" class="activity-dropdown hola2"> <i class="fa fa-bell-o"></i> <b class="badge total"> 5 </b> </span>
                <div class="ajax-dropdown">
                    <div class="btn-group btn-group-justified"  data-toggle="buttons">
                        <label class="btn btn-default autorizacionList">
                            <input type="radio" name="activity">
                            Autorizados </label>
                        <label class="btn btn-default rechazarList">
                            <input type="radio" name="activity" >
                            Rechazados </label>
                    </div>
                    <div class="ajax-notifications custom-scroll">
                        <ul class="notification-body autnot recnot poraut" >
                            <div class="alert alert-transparent">
                                <h4>Click en el boton para mostrar el mensaje</h4>
                            </div>
                            <i class="fa fa-lock fa-4x fa-border"></i>
                        </ul>
                    </div>

                </div>
            </div>
            <div class="pull-right">

                <div id="hide-menu" class="btn-header pull-right">
                    <span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
                </div>               

                <div id="logout" class="btn-header transparent pull-right">
                    <span> 
                        <a href="menu?opc=logout" title="Sign Out" data-action="userLogout" data-logout-msg="¿Está complemetamente seguro de cerrar sesión?">
                            <i class="fa fa-sign-out"></i>
                            <label class="hidden-xs hidden-sm">Salir</label>
                        </a> 
                    </span>
                </div>
                <div id="search-mobile" class="btn-header transparent pull-right hidden-xs">
                    <span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
                </div>

                <div id="fullscreen" class="btn-header transparent pull-right">
                    <span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
                </div>
                <div id="logout" class="btn-header transparent pull-right">
                    <span> <a href="menu" title="Inicio" ><i class="fa fa-home"></i></a> </span>
                </div>


            </div>

        </header>
        <aside id="left-panel">

            <br/>
            <div class="logininfo">
                <div class="row">
                    <div class="avatar-user col-md-3">
                        <input id="id_trabajador" type="hidden" value="<%out.println(sesion.getAttribute("IDTR"));%>" />
                        <input id="iuser" type="hidden" value="<%out.println(id_user);%>" />
                        <a href="javascript:void(0);" id="show-shortcut" >                                             
                            <img id="foto_usuario" src="<c:url value='<%=sexo%>'/>" class="bounceIn animated" style="width: 60px" />
                        </a>  
                    </div>
                    <div class="col-md-9">
                        <div class="login-info text-right">
                            <span ><%out.println((String) sesion.getAttribute("NOMBRE_AP").toString().trim()); %> </span> 
                        </div>
                    </div>
                </div>
            </div>
            <nav>
                <ul id="dataPrivilegios">
                </ul>
            </nav>
            <span id="btn-ocultar" class="minifyme" data-action="minifyMenu">
                <i class="fa fa-arrow-circle-left hit"></i> 
            </span>

        </aside>
        <div id="main" role="main">
            <div id="ribbon">

                <ol class="breadcrumb">
                    <%if (sesion.getAttribute("DEPARTAMENTO") != null) {%>
                    <li><%out.println("Departamento de  " + ((String) sesion.getAttribute("DEPARTAMENTO")) + " / Area de "
                                + ((String) sesion.getAttribute("AREA")) + " / Sección de "
                                + ((String) sesion.getAttribute("SECCION")) + " / Puesto de "
                        );
                        %><%=((String) sesion.getAttribute("PUESTO"))%></li>
                        <%}%>
                </ol>
            </div>
            <div  id="content" style="display:none" class="newContent"></div>
            <div id="content" class="oldContent">

                <div class="row"  >
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4" >
                        <h1 class="page-title txt-color-blueDark" style="margin: 0px 0px 0px;"><i class="fa-fw fa fa-home" id="icon_menu"></i><label class="titulo_menu" >Inicio</label><span> </span></h1>
                    </div>
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                        <div class="animacion_load"></div>
                    </div>

                    <iframe id="myframe" name="myframe" class="iframe_principal" scrolling="si"  width="100%" height="2000" frameborder="0"  src="<c:url value='inicio'/>"></iframe>
                </div>
            </div>
        </div>
        <div class="page-footer">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <span class="txt-color-white">AlphaTeam © 2017</span>
                </div>
            </div>
        </div>

        <%@include file="../../jspf/scripts.jspf" %>  
        <script src="<c:url value='resources/js/JQuery/jquery.autoheight.js'/>" type="text/javascript"></script>
        <script src="<c:url value='resources/js/app.config.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>"></script> 
        <script src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>"></script>
        <script src="<c:url value='resources/js/smartwidgets/jarvis.widget.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/sparkline/jquery.sparkline.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/jquery-validate/jquery.validate.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/masked-input/jquery.maskedinput.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/msie-fix/jquery.mb.browser.min.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/fastclick/fastclick.min.js'/>"></script>
        <script src="<c:url value='resources/js/app.min.js'/>"></script>
        <script>

            $(document).ready(function () {
                listPrivilegios();
            });

            function listPrivilegios() {
                try {
                    $.getJSON('components?opc=privilegios', function (objJson) {
                        var lista = objJson.pr;
                        var s = '';
                        if (lista.length > 0) {
                            for (var i = 0; i < lista.length; i++) {
                                s += '<li class="li-privilegio bounceInDown animated">';
                                s += '<a href="' + lista[i].DI_URL + '" target="myframe"  data-value="' + lista[i].IC_LINK + '"><i class="' + lista[i].IC_LINK + '"></i> <span class="menu-item-parent">' + lista[i].NO_LINK + '</span></a>';
                                s += '</li>';
                            }
                            $("#dataPrivilegios").empty();
                            $("#dataPrivilegios").append(s);
                        }
                    });
                } catch (e) {
                    console.error(e);
                }
            }

            $("#btn-ocultar").click(function () {
                if (btnclose == 0) {
                    $(".logininfo").css({display: "none"});
                    btnclose += 1;
                } else {
                    $(".logininfo").css({display: "block"});
                    btnclose = 0;
                }

            });
        </script>
    </body>
</html>
<%} else {
        out.print("<script> window.location.href = '/gth/';</script>");
    }
%>
