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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/estilopropio.css" rel="stylesheet" type="text/css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/jquery.dataTables.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.c ss'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/jquery.dataTables.min.css'/>">
    </head>
</head>

<div id="content" >
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <h1><span class="semi-bold">Reporte</span> <i class="ultra-light">Renuncias / Abandono  </i><sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
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
                                        <h2>Trabajadores  en Renuncia / Abandono</h2>
                                        <ul class="nav nav-tabs pull-right in" id="myTab"> 
                                            <li class="active">
                                                <a data-toggle="tab" href="#s1"><i class="fa fa-user"></i> <span class="hidden-mobile hidden-tablet">Usuarios RRHH</span></a>
                                            </li>
                                        </ul>
                                    </header>

                                    <table id="example" class="display" cellspacing="0" >
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>

                                                <!-- END SHORTCUT AREA -->
                                                <!--Cositas-->
                                            </tr>
                                        </tfoot>
                                        <tr>
                                            <td>Shad Decker</td>
                                            <td>Regional Director</td>
                                            <td>Edinburgh</td>
                                            <td>51</td>
                                            <td>2008/11/13</td>
                                            <td>$183,000</td>
                                        </tr>
                                        <tr>
                                            <td>Michael Bruce</td>
                                            <td>Javascript Developer</td>
                                            <td>Singapore</td>
                                            <td>29</td>
                                            <td>2011/06/27</td>
                                            <td>$183,000</td>
                                        </tr>
                                        <tr>
                                            <td>Donna Snider</td>
                                            <td>Customer Support</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011/01/25</td>
                                            <td>$112,000</td>
                                        </tr>
                                        </tbody>
                                    </table>


                                </div>
                            </article>
                        </div>
                    </section>

                    <section id="widget-grid" class="col-md-6">
                        <div class="well well-sm"><div class=""><label>Horario escaneado</label>  </div> <div class=" caji12"> <div class="file-input file-input-new"><div class="file-preview">
                                        <div class="close fileinput-remove">×</div>
                                        <div class="file-drop-disabled">
                                            <div class="file-preview-thumbnails"></div>
                                            <div class="clearfix"></div>    <div class="file-preview-status text-center text-success"></div>
                                            <div class="kv-fileinput-error file-error-message" style="display: none;"></div>
                                        </div>
                                    </div>
                                    <div class="input-group file-caption-main">
                                        <div class="input-group-btn">
                                            <div tabindex="500" class="btn btn-primary btn-sm btn-file"><i class="glyphicon glyphicon-folder-open"></i>&nbsp;  <span class="hidden-xs">Examinar …</span><input class="fileDocument" type="file" multiple="true" name="archivos12" id="1500392286362"></div>

                                            <button type="button" tabindex="500" title="Quitar archivos seleccionados" class="btn btn-danger btn-sm fileinput-remove fileinput-remove-button"><i class="glyphicon glyphicon-trash"></i>  <span class="hidden-xs">Quitar</span></button>
                                        </div>
                                        <div tabindex="500" class="form-control file-caption  kv-fileinput-caption">
                                            <div class="file-caption-name" title=""></div>
                                        </div>

                                </div></div>
                                        
                            </div> <div class=""><input type="text" placeholder="Escribe una descripción" class="form-control" name="lob_description12"></div> <div class="">  <label>¿Recibido en fisico?:</label> <label class="toggle"><input type="checkbox" value="1" name="estado12"> <i data-swchon-text="SI" data-swchoff-text="NO"></i></label></div><div class=""> </div>  </div>

                    </section>

</div>


<!-- END SHORTCUT AREA -->
<!--Cositas-->

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
<script src="<c:url value='resources/js/operacionesBuscar.js'/>"></script>
<script src="<c:url value='resources/js/jquery.dataTables.min.js'/>" type="text/javascript"></script>
</body>
</html>
