<%-- 
    Document   : index
    Created on : 13-jul-2017, 9:49:04
    Author     : dreyna
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Vacaciones</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/font-awesome.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production-plugins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">

	</head>
    	    <body>
     
        <div id="content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="well">
                        <h1><span class="semi-bold">Lista</span> <i class="ultra-light">De Vacaciones</i> (Trabajadores) <sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
                            <small class="text-danger slideInRight fast animated"><strong>Inicio de contratación</strong></small></h1>
       
                    </div>
                </div>
            </div>
            <section id="widget-grid" class="">
                <div class="row">
                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="jarviswidget" id="wid-id-0" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" 
                             data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="glyphicon glyphicon-stats txt-color-darken"></i> </span>
                                <h2>Carga de Vacaciones</h2>
                                <ul class="nav nav-tabs pull-right in" id="myTab"> 
                                    <div class="form-group">
                                        <input type="text" id="Buscar" class="form-control" onkeyup="doseach()" placeholder="Search">
                                    </div>
                                </ul>
                            </header>
                            <div class="no-padding">
                                <div class="container">                                           
                                    <table class="table" id="table">
                                        <thead>
                                          <tr>
                                            <th>Nombre</th>
                                            <th>Apellido Paterno</th>
                                            <th>Apellido Materno</th>
                                            <th>Área</th>
                                            <th>Sección</th>
                                            <th>Puesto</th>
                                            <th>Fecha-Desde</th>
                                            <th>Fecha-Hasta</th>
                                            <th><input type="checkbox" id="ckbCheckAll" /></th>
                                          </tr>
                                        </thead>
                                        <c:forEach var="va" items="${listar}" varStatus="status">
                                        <tbody>
                                            <td>${va.NO_TRABAJADOR}</td>
                                            <td>${va.AP_PATERNO}</td>
                                            <td>${va.AP_MATERNO}</td>
                                            <td>${va.NO_AREA}</td>
                                            <td>${va.NO_SECCION}</td>
                                            <td>${va.NO_PUESTO}</td>
                                            <td>${va.FE}</td>
                                            <td>${va.FE2}</td>
                                            <td><p id="checkBoxes"><input type="checkbox" class="checkBoxClass" id="Checkbox1" /></p></td>
                                        </tbody>
                                        </c:forEach>
                                      </table>
                                    </div>
                              </div>
                            </div>
                        </div>
            </section>
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
                                           <script src="<c:url value='resources/js/lista'/>"></script>
                                           <script>
                                            $(document).ready(function () {
                                            $("#ckbCheckAll").click(function () {
                                                $(".checkBoxClass").prop('checked', $(this).prop('checked'));
                                                            });
                                                   });
                                          </script>
        
    </body>
</html>
