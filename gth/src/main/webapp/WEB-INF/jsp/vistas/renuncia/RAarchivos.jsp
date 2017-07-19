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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/estilopropio.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/fileinput.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">
        <link href="<c:url value='resources/css/datatable.css" rel="stylesheet'/>" type="text/css"/>
    </head>
</head>

<body>
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
                                            <h2>Trabajadores en el <strong>Departamento</strong></h2>
                                            <ul class="nav nav-tabs pull-right in" id="myTab"> 
                                                <li class="active">
                                                    <a data-toggle="tab" href="#s1"><i class="fa fa-user"></i> <span class="hidden-mobile hidden-tablet">Usuarios RRHH</span></a>
                                                    
                                                </li>
                                            </ul>
                                        </header>
                                        <br>
                                        <section>
                                            <div id="conTable" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                               
                                            </div>
                                        </section>
                                    </div>
                                </article>
                            </div>

                        </section>


                      <!-- <section id="widget-grid" class="col-md-6">
                            <div class="row">
                                <h1>Adjuntar solicitud</h1>
                                <form>
                                    <div class="smart-form">
                                        <section>
                                            <label class="label">File input</label>
                                            <div class="input input-file state-error">
                                                <span class="button"><input type="file" id="file2" onchange="this.parentNode.nextSibling.value = this.value">Browse</span><input type="text" readonly>
                                            </div>
                                            <div class="note note-error">File size must be less than 3Mb.</div>
                                        </section>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary">Submit</button>
                                        <button class="btn btn-default" type="reset">Reset</button>
                                    </div>
                                </form>
                            </div>
             

                        </section>-->
                </div>
                <!--Cositas-->
                
                
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
                <script type="text/javascript" src="<c:url value='resources/js/file/fileinput.min.js" type="text/javascript'/>"></script>
                <script type="text/javascript" src="<c:url value='resources/js/app.min.js'/>"></script> 
                <script src="<c:url value='resources/js/plugin/datatables/datatable.js'/>" type="text/javascript"></script>


                <script>
                    $(document).ready(function () {
                        list();
                    });

                    function list() {
                        var url = "renu?opc=list";//nombre del controlador ejm. renuncia?op=1
                        try {
                            $.post(url , function (objJson) {
                                var lista = objJson.pr;
                                if (lista.length > 0) {
                                    var m = "";
                                    for (var i = 0; i < lista.length; i++) {
                                        m += '<tr>';
                                        m += '<td>' + (i + 1) + '</td>';
                                        m += '<td>' + lista[i].AP_PATERNO + '  ' + lista[i].AP_MATERNO + ' , ' + lista[i].NO_TRABAJADOR + '</td>';// cambiar por el atributo que te da en tu DAO
                                        m += '<td>' + lista[i].NU_DOC + '</td>';
                                        m += '<td>' + lista[i].AP_MATERNO + '</td>';
                                        m += '<td>' + lista[i].NO_AREA + '</td>';
                                        m += '<td>' + lista[i].NO_SECCION + '</td>';
                                        m += '<td> HOLA </td>';
                                        m += '</tr>';
                                    }
                                    $("#conTable").empty();
                                    $("#conTable").append(createTable());
                                    $("#data").empty();
                                    $("#data").append(m);
                                    $('#dt_basic').dataTable();
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
                        s += '<th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Apellidos y Nombres</th>';
                        s += '<th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> DNI</th>';
                        s += '<th><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>AREA</th>';
                        s += '<th data-hide="phone,tablet"><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> SECCION</th>';
                        s += '<th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>PUESTO</th>';
                        s += '<th data-hide="phone,tablet">OPC</th>';
                        s += '</thead>';
                        s += '<tbody id="data"></tbody>';
                        s += '</table>';
                        return s;
                    }
                </script>
     </body>
</html>
