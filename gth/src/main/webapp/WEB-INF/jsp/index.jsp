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
        String id_rol = (String) sesion.getAttribute("ID_ROL");
%>
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
    </head>
    <body class="smart-style-1 fixed-header fixed-footer mainBody">
        <header id="header">
            <div id="logo-group" >
                <span id="logo"> <img src="<c:url value='resources/img/logoRRHH.png'/>" style=" position: absolute;top: 8px; width:100px; height:36px " alt="Talento Humano"> </span>
                <span id="activity" class="activity-dropdown hola2"> <i class="fa fa-user"></i> <b class="badge total"> 0 </b> </span>
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
                <ul id="mobile-profile-img" class="header-dropdown-list hidden-xs padding-5">
                    <li class="">
                        <a href="#" class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown"> 
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0"><i class="fa fa-cog"></i> Setting</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html" class="padding-10 padding-top-0 padding-bottom-0"> <i class="fa fa-user"></i> <u>P</u>rofile</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="toggleShortcut"><i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i> Full <u>S</u>creen</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="login.html" class="padding-10 padding-top-5 padding-bottom-5" data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i> <strong><u>L</u>ogout</strong></a>
                            </li>
                        </ul>
                    </li>
                </ul>

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

            <!-- User info -->
            <div class="logininfo">
                <div class="row">
                    <div class="avatar-user col-md-3">
                        <input id="id_trabajador" type="hidden" value="<%out.println(sesion.getAttribute("IDTR"));%>" />
                        <input id="iuser" type="hidden" value="<%out.println(id_user);%>" />
                        <a href="javascript:void(0);" id="show-shortcut" >
                            <img id="foto_usuario" src="" class="bounceIn animated" />
                        </a>  
                    </div>
                    <div class="col-md-9">
                        <div class="login-info text-right">
                            <span class="spanuser"> <%out.println((String) sesion.getAttribute("USER")); %></span>  
                        </div>

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
        <!-- END NAVIGATION -->

        <!-- MAIN PANEL -->
        <div id="main" role="main">
            <!-- RIBBON -->
            <div id="ribbon">

                <ol class="breadcrumb">
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

                    <iframe id="myframe" name="myframe" class="iframe_principal" scrolling="si"  width="100%" height="2000" frameborder="0"  src=""></iframe>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
        <!-- END MAIN PANEL -->
        <!-- PAGE FOOTER -->
        <div class="page-footer">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <span class="txt-color-white">AlphaTeam © 2017</span>
                </div>
                <%if (false) {
                %>
                <div class="col-xs-6 col-sm-6 text-right hidden-xs">
                    <div class="txt-color-white inline-block">
                        <i class="txt-color-blueLight hidden-mobile">Last account activity <i class="fa fa-clock-o"></i> <strong>52 mins ago &nbsp;</strong> </i>
                        <div class="btn-group dropup">
                            <button class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white" data-toggle="dropdown">
                                <i class="fa fa-link"></i> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right text-left">
                                <li>
                                    <div class="padding-5">
                                        <p class="txt-color-darken font-sm no-margin">Download Progress</p>
                                        <div class="progress progress-micro no-margin">
                                            <div class="progress-bar progress-bar-success" style="width: 50%;"></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="padding-5">
                                        <p class="txt-color-darken font-sm no-margin">Server Load</p>
                                        <div class="progress progress-micro no-margin">
                                            <div class="progress-bar progress-bar-success" style="width: 20%;"></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="padding-5">
                                        <p class="txt-color-darken font-sm no-margin">Memory Load <span class="text-danger">*critical*</span></p>
                                        <div class="progress progress-micro no-margin">
                                            <div class="progress-bar progress-bar-danger" style="width: 70%;"></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="padding-5">
                                        <button class="btn btn-block btn-default">refresh</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
        <!-- END PAGE FOOTER -->

        <!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
        Note: These tiles are completely responsive,
        you can add as many as you like
        -->
        <div id="shortcut">
            <ul>
                <li>
                    <a href="#inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Correo<span class="label pull-right bg-color-darken">14</span></span> </span> </a>
                </li>
                <li>
                    <a href="#calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendario</span> </span> </a>
                </li>
                <li>
                    <a href="#gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Mapas</span> </span> </a>
                </li>
                <li>
                    <a href="#invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
                </li>
                <li>
                    <a href="#gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Galeria </span> </span> </a>
                </li>
                <li>
                    <a href="Usuario?opc=Ver_Perfil&id=" target="myframe" title="SS" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"  > <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>Mi Perfil </span> </span> </a>
                </li>
            </ul>
        </div>
        <!-- END SHORTCUT AREA -->
        <!--Modal content-->
        <div class="modalContent"></div>

        <script src="<c:url value='resources/js/libs/jquery-2.1.1.min.js'/>" ></script>        
        <script src="<c:url value='resources/js/app.config.js'/>"></script>
        <script src="<c:url value='resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>"></script> 
        <script src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>"></script>
        <script src="<c:url value='resources/js/notification/SmartNotification.min.js'/>"></script>
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
                $.ajax({
                    url: 'privilegios',
                    type: 'POST',
                    async: true,
                    data: '',
                    success: function (objJson) {
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
                    }
                });
            });

        </script>
    </body>
</html>
<%} else {
        out.print("<script> window.location.href = '/TALENTO_HUMANO/';</script>");
    }
%>