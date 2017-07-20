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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">
        <link href="<c:url value='resources/css/datatable.css" rel="stylesheet'/>" type="text/css"/>
        <!-- file-input csss-->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/file-input/fileinput-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/file-input/fileinput.min.css'/>">
    </head>

<body>
    <div id="content" >
        <div class="row">
            <div class="col-sm-12">
                <div class="well">
                    <h1><span class="semi-bold">Reporte</span> <i class="ultra-light">Renuncias / Abandono  </i><sup class="badge bg-color-red bounceIn animated">v 2.0</sup></h1> <br>
                </div>
            </div>
        </div>
        <section id="widget-grid" class="col-md-6 jarviswidget">
            <div id="close" class="row">
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
                            <div id="conTable" class="col-xs-6 col-sm-12 col-md-12 col-lg-12">


                            </div>
                        </section>
                    </div>
                </article>
            </div>
        </section>
        <!-- -->
        <section  class="col-md-6 jarviswidget">
            
            <div id="ONG" class="widget-body bordered">
              <!-- carga el formulario 
              <form id="Contes" class="form-horizontal"> 
                </form>
              -->
              
            </div>
            
            <div id="adj" class="row" >
                <h1>Adjuntar solicitud de Renuncia y/o Abandono</h1>
                <form >
                    <div class="col col-2">
                        <input id="input-1" id="file" name="input2[]"  type="file" class="file file-loading" multiple data-show-upload="false" data-show-caption="true" data-allowed-file-extensions='["jpg","doc","docx","pdf"]'>                               
                    </div>
                </form>
                <br>
                <div class="form-group">
                    <button class="btn btn-primary" id="enviar" disabled="">Submit</button>
                    <button class="btn btn-default" id="reset" onclick="Cerrar();" type="reset" disabled="" >Reset</button>
                    <!--<button class="btn btn-primary" onclick="Noti();" >Submit</button>-->
                </div>
                
            </div>
            
        </section>
    </div>


    <!--SCRIPT-->
    <%@include file="../../../../jspf/scripts.jspf" %>

    <script type="text/javascript" src="<c:url value='resources/js/app.config.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>"></script> 
    <script type="text/javascript" src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>"></script><!-- bootstrap min.js-->
    <script type="text/javascript" src="<c:url value='resources/js/smartwidgets/jarvis.widget.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/sparkline/jquery.sparkline.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/jquery-validate/jquery.validate.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/masked-input/jquery.maskedinput.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/msie-fix/jquery.mb.browser.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/plugin/fastclick/fastclick.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/app.min.js'/>"></script> 
    <script src="<c:url value='resources/js/plugin/datatables/datatable.js'/>" type="text/javascript"></script>
    <!--IMPORTANTE : FILE INPUTS-->
    <script src="<c:url value='resources/js/plugin/file-input/fileinput.js'/>" ></script>
    <script src="<c:url value='resources/js/plugin/file-input/fileinput.min.js'/>" ></script>
    <!--NOTIFY-->
    <script src="<c:url value='resources/js/notification/push.min.js'/>"></script>
    
    
    <script>
                                    $(document).ready(function () {
                                        list();
                                        
                                        $("#ONG").hide();
                                    });

                                    function list() {
                                        var url = "renu?opc=list";//nombre del controlador ejm. renuncia?op=1
                                        try {
                                            $.post(url, function (objJson) {
                                                var lista = objJson.pr;
                                                if (lista.length > 0) {
                                                    var m = "";
                                                    for (var i = 0; i < lista.length; i++) {
                                                        m += '<tr>';
                                                        m += '<td>' + (i + 1) + '</td>';
                                                        m += '<td>' + lista[i].AP_PATERNO + '  ' + lista[i].AP_MATERNO + ' , ' + lista[i].NO_TRABAJADOR + '</td>';// cambiar por el atributo que te da en tu DAO
                                                        m += '<td>' + lista[i].NU_DOC + '</td>';
                                                        m += '<td>' + lista[i].NO_AREA + '</td>';
                                                        m += '<td>' + lista[i].NO_SECCION + '</td>';
                                                        m += '<td>' + lista[i].NO_PUESTO + '</td>';
                                                        m += '<td><a id=' + lista[i].ID_TRABAJADOR + ' onclick="getDataWorker(this.id);"  class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-list"></i></a></td>';
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
                                        s += '<th><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Area</th>';
                                        s += '<th data-hide="phone,tablet"><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> Seccion</th>';
                                        s += '<th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Puesto</th>';
                                        s += '<th data-hide="phone,tablet">Opc</th>';
                                        s += '</thead>';
                                        s += '<tbody id="data"></tbody>';
                                        s += '</table>';
                                        return s;
                                    }

                                    function getDataWorker(id) {
                                        var url = 'renu?opc=Detalle';//controlador
                                        var data = 'idtr=' + id;//datos a enviar
                                        try {
                                                $.post(url, data, function (obj) {
                                                    var listaD = obj.ls;
                                                    if(listaD.length > 0){
                                                        var l ="";
                                                        for  (var  i =0 ; i< listaD.length; i++){
                                                            l += '<form id="Contes" class="form-horizontal">';
                                                            l += '<fieldset>';
                                                            l += '<legend>Datos del Trabajor</legend>';
                                                            l += '<div class="form-group">';
                                                            l += '<label class="col-md-2 control-label"> Nombre :</label>';
                                                            l += '<div class="col-md-7">';
                                                            l += '<input class="form-control"  disabled="disabled"  value="'+ listaD[i].NO_TRABAJADOR +'" type="text">';
                                                            l += '</div>';
                                                            l += '</div>';
                                                            l += '<div class="form-group">';
                                                            l += '<label class="col-md-2 control-label">Apellidos : </label>';
                                                            l += '<div class="col-md-7">';
                                                            l += '<input class="form-control" disabled="disabled" value="' + listaD[i].AP_MATERNO + ' , ' + listaD[i].NO_TRABAJADOR + '" type="text">';
                                                            l += '</div>';
                                                            l += '</div>';
                                                            l += '<div class="form-group">';
                                                            l += '<label class="col-md-2 control-label">Celular : </label>';
                                                            l += '<div class="col-md-4">';
                                                            l += '<input class="form-control" disabled="disabled" value = "'+ listaD[i].CL_TRA+'" type="text">';
                                                            l += '</div>';
                                                            l += '<label class="col-md-2 control-label">DNI :</label>';
                                                            l += '<div class="col-md-4">';
                                                            l += '<input class="form-control" disabled="disabled" value="' + listaD[i].NU_DOC + '" type="text">';
                                                            l += '</div>';
                                                            l += '</div>';
                                                            l += '<div class="form-group">';
                                                            l += '<label class="col-md-2 control-label">Inicio Contrato : </label>';
                                                            l += '<div class="col-md-4">';
                                                            l += '<input class="form-control" disabled="disabled" value ="'+ listaD[i].FEC_INI +'" type="text">';
                                                            l += '</div>';
                                                            l += '<label class="col-md-2 control-label">Fin Contrato : </label>';
                                                            l += '<div class="col-md-4">';
                                                            l += '<input class="form-control" disabled="disabled" value ="'+listaD[i].FEC_FIN +'" type="text">';
                                                            l += '</div>';
                                                            l += '</div>';
                                                            l += '<div class="form-group">';
                                                            l += '<label class="col-md-2 control-label"> Descripción :</label>';
                                                            l += '<div class="col-md-10">';
                                                            l += '<textarea  class="form-control" placeholder="Descripción acerca de la renuncia del trabajador."  rows="3" cols="100">';
                                                            l += '</textarea>';
                                                            l += '</div>';
                                                            l += '</div>';
                                                            l += '</fieldset>';
                                                            l += '</form>';
                                                            Noti(listaD[i].FEC_FIN);
                                                        }
                                                        $("#ONG").empty();
                                                        $("#ONG").append(l);
                                                        $("#ONG").show();
                                                        $("#enviar").removeAttr( 'disabled' );
                                                        $("#reset").removeAttr( 'disabled' );
                                                        $("#file").removeAttr( 'disabled' );
                                                    }
                                                });

                                        } catch (e) {
                                            console.error("Error al listar : " + e);
                                        }
                                    }
                                    
                                    function Cerrar(){
                                         $("#ONG").hide();
                                         $("#ONG").empty();
                                         $("#enviar").attr( "disabled " ,"");
                                         $("#reset").attr( 'disabled=""' );
                                         $("#file").attr( 'disabled=""' );
                                    }
                                    
                                    function Noti(st){
                                        Push.create("Hola su Contrato Vence en:", {
                                            body: st,
                                            icon: '',
                                            timeout: 5000,
                                            onClick: function () {
                                                this.close();
                                            }
                                        });
                                    }     
    </script>
</body>
</html>
