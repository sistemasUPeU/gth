<%-- 
    Document   : RAarchivos
    Created on : 17/07/2017, 09:27:55 AM
    Author     : Leandro Burgos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/font-awesome.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production-plugins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>"></head>
    </head>
    <body>
     
        
        <div id="content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="well">
                        <h1><span class="semi-bold">Reporte</span> <i class="ultra-light">Carga Académica</i> (Docentes) <sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
                            <small class="text-danger slideInRight fast animated"><strong>Inicio de contratación</strong></small></h1>
                        <!--<div class="row">
                            <div class="col-md-4">
                                <select class="form-control" >
                                    <option value="" >[Condición Laboral]</option>
                                    <option value="1" >Contratado</option>
                                    <option value="2" >Tiempo Parcial</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-control" >
                                    <option value="" >[Facultad Adscrita]</option>
                                    <option value="1" >item 1</option>
                                    <option value="2" >item 2</option>
                                </select>
                            </div>
                        </div>-->

                    </div>
                </div>
            </div>
            <section id="widget-grid" class="col-md-6">
                <div class="row">
                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="jarviswidget" id="wid-id-0" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" 
                             data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="glyphicon glyphicon-stats txt-color-darken"></i> </span>
                                <h2>Carga Académica</h2>
                                <ul class="nav nav-tabs pull-right in" id="myTab"> 
                                    <li class="active">
                                        <a data-toggle="tab" href="#s1"><i class="fa fa-user"></i> <span class="hidden-mobile hidden-tablet">Usuarios RRHH</span></a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#s2"><i class="fa fa-users"></i> <span class="hidden-mobile hidden-tablet">Usuarios Académico</span></a>
                                    </li>
                                </ul>
                            </header>
                            <div class="no-padding">
                                <div class="widget-body">
                                    <div class="tab-pane fade active in padding-10 no-padding-bottom" id="s1">
                                        <table   class="table table-striped table-bordered table-hover datatableRepCargaAcademica" width="100%">
                                            <thead>
                                                <tr>
                                                   <!-- <th class="hasinput" colspan="10"  rowspan="1"></th>  
                                                    <th class='hasinput' >
                                                        <input type="text" class='form-control input-sm dateDesdeM' />
                                                    </th>
                                                    <th class='hasinput' >
                                                        <input type="text" class='form-control input-sm dateHastaM' />
                                                    </th>-->
                                                    <label>Search:<input type="search" class="form-control" placeholder="" aria-controls="dt_basic1"></label>
                                                </tr>
                                                <tr>
                                                    <th>Tipo Doc.</th>
                                                    <th>N° Documento</th>
                                                    <th style="width: 16%">Apellidos y Nombres</th>
                                                    <th>Facultad</th>
                                                    <th>Escuela</th>
                                                    <th>Situación Educativa</th>
                                                    <th>Profesión Docente</th>
                                                    <th>Condición</th>
                                                    <th>Ciclo</th>
                                                    <th>Imagen</th>
                                                    <th>Seleccionar</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                              
                                                <tr>
                                                    <td>asa</td>
                                                    <td>asa</td>
                                                    <td><label>asa</label>
                                                        <sup class="badge bg-color-greenLight bounceIn animated"></sup></td>
                                                    <td>sa</td>
                                                    <td>as</td>
                                                    <td>asa</td>
                                                    <td>as</td>
                                                    <td>sa</td>
                                                    <td>as</td>
                                                    <td>
                                                    <th class="sorting_asc_disabled" ><center><input type="checkbox" name="all" id="all" onclick="checkAll();"></center></th>

                                                   
                                           <%-- <!--<input type="hidden" class="idtr<%=(i + 1)%>" value="<%=ca.getId_trabajador()%>"/>
                                            <input type="hidden" class="iddgp<%=(i + 1)%>" value=""/>
                                            <input type="hidden" class="proceso<%=(i + 1)%>" value=""/>
                                            -->--%>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tab-pane fade" id="s2">
                                        <table id="example-table2" class="table table-condensed" >
                                            <thead>
                                                <tr>
                                                    <th>AP_PATERNO</th>
                                                    <th>AP_MATERNO</th>
                                                    <th>NO_FACULTAD</th>
                                                    <th>DE_CARGA</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </article>
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

        
    </body>
</html>
