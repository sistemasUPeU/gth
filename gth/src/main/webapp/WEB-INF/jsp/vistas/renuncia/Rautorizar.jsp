<%-- 
    Document   : RAautorizar
    Created on : 17/07/2017, 10:16:58 AM
    Author     : Leandro Burgos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/dataTables.checkboxes.css'/>">



    </head>
    <body>
        <div id="content" >
            <div class="row">
                <div class="col-sm-12">
                    <div class="well">
                        <h1><span class="semi-bold">Lista de </span> <i class="ultra-light">/Renuncias</i><sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
                            </div>
                            </div>
                            </div>
                            <section id="widget-grid" class="col-md-12">
                                <div class="row">
                                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="jarviswidget" id="wid-id-0" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" 
                                             data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="glyphicon glyphicon-stats txt-color-darken"></i> </span>
                                                <h2>Lista de<strong>Renuncias</strong></h2>
                                                <ul class="nav nav-tabs pull-right in" id="myTab"> 
                                                    <li class="active">
                                                        <a data-toggle="tab" href="#s1"><i class="fa fa-user"></i> <span class="hidden-mobile hidden-tablet">Trabajadores RRHH</span></a>
                                                    </li>
                                                </ul>
                                            </header>
                                            <br>
                                            <div id="contTable">                                               
                                            </div>
                                        </div>
                                    </article>
                                </div>

                            </section>

                    </div>
                    <%@include file="../../../../jspf/scripts.jspf" %>
                    <script type="text/javascript" src="<c:url value='resources/js/libs/jquery-2.1.1.min.js'/>" ></script>        
                    <script type="text/javascript" src="<c:url value='resources/js/app.config.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>"></script> 
                    <script type="text/javascript" src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>"></script><!-- bootstrap min.js-->
                    <script type="text/javascript" src="<c:url value='resources/js/notification/SmartNotification.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/smartwidgets/jarvis.widget.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/sparkline/jquery.sparkline.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/jquery-validate/jquery.validate.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/masked-input/jquery.maskedinput.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/msie-fix/jquery.mb.browser.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/plugin/fastclick/fastclick.min.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/dataTables.checkboxes.js'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/file/fileinput.min.js" type="text/javascript'/>"></script>
                    <script type="text/javascript" src="<c:url value='resources/js/app.min.js'/>"></script> 
                    <script src="<c:url value='resources/js/plugin/datatables/datatable.js'/>" type="text/javascript"></script>


                    <script>
                        $(document).ready(function () {
                            list();
                        });
                        function list() {
                            var url = "renu?opc=listR"; //nombre del controlador ejm. renuncia?op=1
                            try {
                                $.post(url, function (objJson) {
                                    var lista = objJson.ar;
                                    if (lista.length > 0) {
                                        var m = "";
                                        for (var i = 0; i < lista.length; i++) {
                                            m += '<tr>';
                                            m += '<td>' + (i + 1) + '</td>';
                                            m += '<td>' + lista[i].IDRENUNCIA + '</td>';
                                            m += '<td>' + lista[i].AP_PATERNO + '  ' + lista[i].AP_MATERNO + ' , ' + lista[i].NO_TRABAJADOR + '</td>';
                                            m += '<td><center><p id="checkBoxes"><input type="checkbox" class="checkBoxClass" id="Checkbox1" /></p></center></td>';
                                            m += '</tr>';
                                        }
                                        $("#contTable").empty();
                                        $("#contTable").append(createTable());
                                        $("#data").empty();
                                        $("#data").append(m);
                                        $('#dt_basic').dataTable();

                                        $("#ckbCheckAll").click(function () {
                                            $(".checkBoxClass").prop('checked', $(this).prop('checked'));
                                        });
                                    } else {
                                        console.log("No hay datos en la tabla");
                                    }
                                });
                            } catch (e) {
                                console.error("Error al listar : " + e);
                            }
                        }
                        function createTable() {
                            var s = '<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">';
                            s += '<thead>';
                            s += '<th data-hide="phone">N°</th>';
                            s += '<th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i>Renuncia</th>';
                            s += '<th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Apellidos y Nombres</th>';
                            s += '<th>Seleccionar Todo<center><input type="checkbox" id="ckbCheckAll" ></center></th>'
                            s += '</thead>';
                            s += '<tbody id="data"></tbody>';
                            s += '</table>';
                            return s;
                        }




                    </script>


                    </body>                   

                    </html>


