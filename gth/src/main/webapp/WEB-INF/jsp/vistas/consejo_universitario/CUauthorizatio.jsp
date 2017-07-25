<%-- 
    Document   : CUauthorizatio
    Created on : 20/07/2017, 04:16:07 PM
    Author     : Leandro Burgos
--%>
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
        <%@include file="../../../../jspf/general.jspf" %>
    </head>
    <body>
        <div class="well well-light">
            <div class="row">

                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="panel panel-success pricing-big" style="box-shadow: 0 0 20px 0 black">

                        <div class="panel-heading">
                            <center><img src="<c:url value='resources/img/cu002.png'/>" style="width: 50%;" alt=""></center>
                        </div>
                        <div class="panel-body no-padding text-align-center">
                            <div class="the-price">
                                <h1><strong>Vacaciones</strong></h1>
                                <input class="vacCU" type="hidden" value="REQ-0013">
                            </div>
                            <div class="price-features">
                                <ul class="list-unstyled text-left contLCU"></ul>
                            </div>
                        </div>
                        <div class="panel-footer text-align-center">
                            <a class="btn btn-success btn-block acpVac"  role="button" onclick="autoMasiva()">Aceptar todo</a>
                            <a class="btn btn-primary btn-block" role="button" data-toggle="modal" data-target="#ModalData">Ver Detalle</a>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="panel panel-teal pricing-big" style="box-shadow: 0 0 20px 0 black">
                        <div class="panel-heading">
                            <div class="panel-heading">
                                <center><img src="<c:url value='resources/img/cu003.png'/>" style="width: 50%;" alt=""></center>
                            </div>
                        </div>
                        <div class="panel-body no-padding text-align-center">
                            <div class="the-price">
                                <h1><strong>Renuncias y Abandono de Trabajo</strong></h1>
                            </div>
                            <div class="price-features">
                                <ul class="list-unstyled text-left">
                                    <li><i class="fa fa-circle-o text-success"></i> 7  <a class="SR" ><strong> trabajadores FCE</strong></a></li>
                                    <li><i class="fa fa-circle-o text-success"></i> 2  <a class="SR" ><strong> trabajadores Colegio Unión</strong></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-footer text-align-center">
                            <a class="btn btn-success btn-block disabled" role="button">Aceptar todo</a>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="panel panel-primary pricing-big" style="box-shadow: 0 0 50px 0 black">
                        <img src="<c:url value='resources/img/ribbon.png'/>" class="ribbon" alt="">
                        <div class="panel-heading">
                            <div class="panel-heading">
                                <center><img src="<c:url value='resources/img/cu001.png'/>" style="width: 50%;" alt=""></center>
                            </div>
                        </div>
                        <div class="panel-body no-padding text-align-center">
                            <div class="the-price">
                                <h1><strong>Permisos, Licencias y Descanso Médico</strong></h1><h1 style="color: gray">(No desarrollado)</h1>
                            </div>
                            <div class="price-features">
                                <ul class="list-unstyled text-left">
                                    <li><i class="fa fa-circle-o text-success"></i> 10  <a class="SR" ><strong> trabajadores Servicios</strong></a></li>
                                    <li><i class="fa fa-circle-o text-success"></i> 5  <a class="SR" ><strong> trabajadores Bienestar Universitario</strong></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-footer text-align-center">
                            <a class="btn btn-success btn-block disabled" role="button">Aceptar todo</a>
                        </div>
                    </div>
                </div>	    	
            </div>

        </div>

        <input type="hidden" value="" class="vaCU">
        <div class="modal fade bs-example-modal-lg" id="ModalData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form class="form-inline validarform" id="frm_filtro2" method="post" action="../../consejo" name="formulario">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title conTi" id="exampleModalLabel">Lista de Trabajadores</h4>
                        </div>
                        <div class="modal-body">
                            <div class="widget-body no-padding conTCU">
                            </div>                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="button" onclick="autorizarAR()" class="btn btn-primary">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="../../../../jspf/scripts.jspf" %>
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
        <script type="text/javascript">

                                // DO NOT REMOVE : GLOBAL FUNCTIONS!
                                $(document).ready(function () {
                                    createDIV();
                                    pageSetUp();
                                });
                                function select_all() {
                                    $(".sworker").attr('checked', true);
                                }
                                function llenarModal() {
                                    //alert(as);
                                    var url = "../../consejo";
                                    var data = "opc=EmplAreCU";
                                    data += "&mod=REQ-0013";
                                    data += "&dep=DPT-0001";
                                    //alert(data);
                                    $.post(url, data, function (objJson) {
                                        var apt = objJson.aptos;
                                        if (apt.length > 0) {
                                            var s = "";
                                            for (var i = 0; i < apt.length; i++) {
                                                s += "<tr>";
                                                s += "<td><center>" + apt[i].apellidos + " " + apt[i].nombres + "</center></td>";
                                                s += "<td><center>" + apt[i].no_area + "</center></td>";
                                                s += "<td><center>" + apt[i].no_seccion + "</center></td>";
                                                s += "<td><center>" + apt[i].no_puesto + "</center></td>";
                                                s += '<td style="font-family:arial;"><center><input name="AutorizAN" type="checkbox" class="sworker" onclick="evaluar(this.checked)" id="imp"></center></td>';
                                                //s += "<td>no definido</td>";
                                                //s += '<td style="font-family:arial;"><center><input name="AutorizAN" type="checkbox" class="sworker" value="' + apt[i].id_con + '" id="imp"></center></td>';
                                                s += "</tr>";
                                            }
                                            $(".conTCU").empty();
                                            var srt = createTable();
                                            $(".conTCU").append(srt);
                                            $("#dataCU").empty();
                                            $("#dataCU").append(s);
                                            $(".tbSR").DataTable();
                                            /*$(".conTi").empty();
                                             $(".conTi").append("Lista de Trabajadores")*/
                                        } else {
                                            alert("Algo sucedio al listar los trabajadores");
                                        }
                                    });
                                }
                                function evaluar(a) {
                                    alert(a);

                                }
                                function createTable() {
                                    var s = '<table id="dt_basic" class="table table-striped table-bordered table-hover tbSR" width="100%">';
                                    s += '<thead>';
                                    s += '<tr>';
                                    s += '<th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Apellidos y Nombres</th>';
                                    s += '<th data-hide="phone"><i class="fa fa-fw fa-dot-circle-o text-muted hidden-md hidden-sm hidden-xs"></i> Area</th>';
                                    s += '<th>Seccion</th>';
                                    s += '<th data-hide="phone,tablet"><i class="fa fa-fw fa-dot-circle-o txt-color-blue hidden-md hidden-sm hidden-xs"></i> Puesto</th>';
                                    // s += '<th data-hide="phone,tablet">City</th>';
                                    //s += '<th data-hide="phone,tablet"><button type="button" class="btn btn-warning" id="btns" onclick="select_all()"><i class="glyphicon glyphicon-check"></i></button></th>';
                                    s += '<th><center><button type="button" class="btn btn-warning" id="btns" onclick="select_all()"><i class="glyphicon glyphicon-check"></i></button></center></th>';
                                    s += '</tr>';
                                    s += '</thead>';
                                    s += '<tbody id="dataCU">';
                                    s += '</tbody>';
                                    s += '</table>';
                                    return s;
                                }

                                function createDIV() {
                                    var url = "cu";
                                    var data = "opc=ListaECU";
                                    data += "&req=" + $(".vacCU").val();
                                    $.post(url, data, function (objJson) {
                                        var sr = objJson.listaCCU;
                                        var s = "";
                                        if (sr.length > 0) {
                                            for (var i = 0; i < sr.length; i++) {
                                                s += '<li><i class="fa fa-chevron-right"></i>  ' + sr[i].cantidad + ' <a data-toggle="modal" onclick="llenarModal()" data-target="#ModalData" class="SR"><strong> trabajador(es) ' + sr[i].no_dep + '</strong></a></li>';
                                            }
                                            $(".contLCU").empty();
                                            $(".contLCU").append(s);
                                        }

                                    });
                                }
                                function autoMasiva() {
                                    $.SmartMessageBox({
                                        title: "Confirmación de Autorización",
                                        content: "¿Está seguro que desea autorizar las vacaciones de forma masiva?",
                                        buttons: '[No][Si]'
                                    }, function (ButtonPressed) {
                                        if (ButtonPressed === "Si") {
                                            probar();
                                            createDIV();
                                        }
                                    });
                                }

                                function autorizarAR() {
                                    createArray();
                                    /*$.SmartMessageBox({
                                     title: "Confirmación de Autorización",
                                     content: "¿Está seguro que desea autorizar las vacaciones de forma masiva?",
                                     buttons: '[No][Si]'
                                     }, function (ButtonPressed) {
                                     if (ButtonPressed === "Si") {
                                     $("#ModalData").modal("hide");
                                     $.smallBox({
                                     title: "Autorización Correcta",
                                     content: "La autorización masiva fue correctamente ejecutada",
                                     color: "#00c853",
                                     timeout: 3000,
                                     icon: "fa fa-check-square-o"
                                     });
                                     createDIV();
                                     }
                                     });*/
                                }

                                function probar() {
                                    var array = [1, 6, 3, 7, 9, 6];
                                    var url = '../../consejo?opc=vacAM';
                                    var count = 0;
                                    if (array.length > 0) {

                                        for (var i = 0; i < array.length; i++) {
                                            var data = 'id=' + array[i];
                                            $.post(url, data, function (objJson) {
                                                if (objJson.fee) {
                                                    $.smallBox({
                                                        title: "Autorización Correcta",
                                                        content: "La autorización masiva fue correctamente ejecutada",
                                                        color: "#00c853",
                                                        timeout: 3000,
                                                        icon: "fa fa-check-square-o"
                                                    });
                                                } else {
                                                    count++;
                                                    $.smallBox({
                                                        title: "Autorización Incorrecta",
                                                        content: "La autorización masiva no fue correctamente ejecutada",
                                                        color: "#b71c1c",
                                                        timeout: 3000,
                                                        icon: "fa fa-times-circle-o"
                                                    });
                                                }

                                            });
                                        }
                                    } else {
                                        $.smallBox({
                                            title: "No hay Trabajadores para Autorizar",
                                            content: "No se encontraron trabajadores por autorizar",
                                            color: "#f9a825",
                                            timeout: 3000,
                                            icon: "fa fa-info-circle"
                                        });
                                    }



                                }

                                function createArray() {
                                    var filas = document.getElementById('dt_basic').rows.length;
                                    for (var i = 1; i < filas; i++) {

                                        var a = document.getElementById('dt_basic').rows[i].cells[4].innerHTML/*.split('onclick="removeeq(')*/;
                                        alert(a);
                                    }
                                }
        </script>
    </body>
</html>

