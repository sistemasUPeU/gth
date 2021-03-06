<%-- 
    Document   : Worker
    Created on : 17/07/2017, 10:33:08 AM
    Author     : DiegoCrafter
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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">
    </head>
    <body>
     
        <div id="content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="well">
                        <button class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg" id="save">Large modal</button>
                        <h1><span class="semi-bold">Reporte</span> <i class="ultra-light">Vacaciones</i> (Trabajadores) <sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
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
                                <div class="container">                                           
                                       <table id="example" class="table table-striped table-bordered table-hover" width="100%">
                                                    <thead>			                
                                                        <tr>
                                                            <th data-hide="phone">N°</th>
                                                            <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> APELLIDOS Y NOMBRES</th>
                                                            <th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> DNI</th>
                                                            <th><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>TELEFONO</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> CELULAR</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Correo Personal</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Correo Institucional</th>
                                                            <th><input type="checkbox" id="ckbCheckAll" /></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="data">
                                                        <tr >
                                                            <td>1</td>
                                                            <td>Jennifer</td>
                                                            <td>1-342-463-8341</td>
                                                            <td>Et Rutrum Non Associates</td>
                                                            <td>35728</td>
                                                            <td>Fogo</td>
                                                            <td>OPC</td>
                                                            <td><p id="checkBoxes"><input type="checkbox" class="checkBoxClass" id="Checkbox1" /></p></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                    </div>
                              </div>
                            </div>
                        </div>
            </section>
            
               
           
                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title" id="exampleModalLongTitle" style="text-align: center;">Programación de fechas para vacaciones</h1>
                                <h4 class="modal-title" id="exampleModalLongTitle" >Datos de los Trabajadores</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                
                                <table id="example" class="table table-striped table-bordered table-hover" width="100%">
                                                    <thead>			                
                                                        <tr>
                                                            <th data-hide="phone">N°</th>
                                                            <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> APELLIDOS Y NOMBRES</th>
                                                            <th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> DNI</th>
                                                            <th><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>TELEFONO</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> CELULAR</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Correo Personal</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>Correo Institucional</th>
                                                            <th><input type="checkbox" id="ckbCheckAll" /></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="log">
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Jennifer</td>
                                                            <td>1-342-463-8341</td>
                                                            <td>Et Rutrum Non Associates</td>
                                                            <td>35728</td>
                                                            <td>Fogo</td>
                                                            <td>OPC</td>
                                                            <td><p id="checkBoxes"><input type="checkbox" class="checkBoxClass" id="Checkbox1" /></p></td>
                                                        </tr>
                                                       
                                                    </tbody>
                                                </table>
                            </div>
                            <div class="modal-footer">
                                <div class="row">
                                    <div class="col col-12 text-center">
                                        <h3><label>Seleccionar rango de fechas a solicitar:</label></h3>
                                    </div>
                                    <div class="row">
                                        <div class="col col-2"></div>
                                        <section class="row col col-6 dateranges ">
                                            <div style="padding-bottom: 5px; margin-left: 2vh;" class="row col-sm-4 rangegroup1">
                                                <div class="col col-6">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input onchange="calnd()" class="form-control" id="from1" type="text" placeholder="Desde">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col col-6 ">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input onchange="calnd()" class="form-control" id="to1" type="text" placeholder="Hasta">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <div class="col col-2">
                                            <a id="addrange" class="btn btn-primary btn-circle btn-lg"><i class="glyphicon glyphicon-plus"></i></a>
                                            <a id="delrange" class="btn btn-danger btn-circle btn-lg"><i class="glyphicon glyphicon-remove"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
           
            
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
                                            $("#save").click(function() {
                  //reset the logger
                   $('#log').empty();

              
                    $('#data input:checkbox:checked').each(function() {
                    var array = $(this).parents("tr").eq(0).find("td").eq(0);
                   for(i=0;i<array.length;i++)
                   {
                    console.log(array.text())
                };
                    $('#log').append(JSON.stringify(array.text()));
                  });
                  });

                    $.ajax({
                    url: 'turnh',
                    type: 'POST',
                    async: true,
                    data: '',
                    success: function (objJson) {
                        var lista = objJson.pr;
                        var s = '';
                        if (lista.length > 0) {
                            for (var i = 0; i < lista.length; i++) {
                                 s += '<tr>';
                                 s += '<td>'  + (i + 1) + '</td>';
                                 s += '<td>'+ lista[i].AP_PATERNO + '  ' + lista[i].AP_MATERNO + ' , ' +lista[i].NO_TRABAJADOR +'</td>';// cambiar por el atributo que te da en tu DAO
                                 s += '<td>' + lista[i].NU_DOC + '</td>';
                                 s += '<td>' + lista[i].TE_TRABAJADOR + '</td>';
                                 s += '<td>' + lista[i].CL_TRA + '</td>';
                                 s += '<td>' + lista[i].DI_CORREO_PERSONAL + '</td>';
                                 s += '<td>' + lista[i].DI_CORREO_INST + '</td>'; 
                                 s += '<td>' + '<p id="checkBoxes"><input type="checkbox" class="checkBoxClass" id="Checkbox1" /></p>' +'</td>';
                                 s += '</tr>';
                            }
                            $("#data").empty();
                            $("#data").append(s);
                        }
                      }
                     });
                     
                    $("#ckbCheckAll").click(function () {
                    $(".checkBoxClass").prop('checked', $(this).prop('checked'));
                                            });
            });
                                   </script>
        
    </body>
</html>
