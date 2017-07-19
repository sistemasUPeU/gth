<%@page import="pe.edu.upeu.gth.config.globalProperties" %>
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
    </head>
    <body onload="nobackbutton()" class="animated fadeInDown">
        <header id="header">
            <div id="logo-group" >

            </div>

        </header>
        <div id="main" role="main" class="mainLogin">
            <div id="content" class="containerr">
                <div class="row">
                    <div
                        class="col-xs-12 col-sm-12 col-md-12 col-lg-12 hidden-xs hidden-sm">
                        <h1 class="text-info login-header-big text-center">Gestión de Talento Humano</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-md-12 col-md-offset-4">
                        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4 ">
                            <div class="well no-padding">
                                <form   id="login-form" class="form-horizontal formLogin"   autocomplete="off" >
                                    <fieldset>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="icon-addon addon-md">
                                                    <input id="txtUsuario"
                                                           type="text" name="username"
                                                           placeholder="Usuario" maxlength="20"
                                                           autocomplete="off"
                                                           onkeypress="return soloLetrasNumeros(event);"
                                                           class="form-control txtUsuario" required="" />
                                                    <label  class="fa fa-user fa-lg fa-fw" rel="tooltip"   data-original-title="Complete este campo"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group" style="width: 100%;">
                                                    <div class="icon-addon addon-md">
                                                        <input id="txtClave" required="" name="clave"  type="password" placeholder="Contraseña"
                                                               maxlength="50" autocomplete="off" class="form-control txtClave" 
                                                               onkeypress="return soloLetrasNumeros(event);" style="width: 100%;" />
                                                        <span   class="fa fa-lock fa-lg fa-fw lbClave" rel="tooltip" style="z-index: 5;"   data-original-title="Complete este campo"></span>
                                                    </div>
                                                    <span class="input-group-btn" >
                                                        <button class="btn btn-default btnIngresar" type="submit" disabled="" id="btnIngresar" name="btnIngresar"><i class="fa fa-sign-in fa-lg" ></i></button>
                                                    </span>   
                                                </div>
                                            </div>
                                        </div>
                                        <div class="alert alert-warning fade in box_cargando" style="display:none">
                                            <button class="close" data-dismiss="alert" >×</button>
                                            <i class="fa-fw fa fa-warning"></i>  
                                            <span class="texto_box_h">Conectando...</span>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../../jspf/scripts.jspf" %>  
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
        <script src="<c:url value='resources/js/plugin/jquery-validate/jquery.validate.min.js'/>"></script>
        <script src="<c:url value='resources/js/index.js?v=<%=globalProperties.VERSION_JS%>'/>" type="text/javascript"></script>
        <script>
                                                                   function nobackbutton() {
                                                                       window.location.hash = "no-back-button";
                                                                       window.location.hash = "Again-No-back-button";
                                                                       window.onhashchange = function () {
                                                                           window.location.hash = "";
                                                                       };
                                                                   }
        </script>
    </body>
</html>
