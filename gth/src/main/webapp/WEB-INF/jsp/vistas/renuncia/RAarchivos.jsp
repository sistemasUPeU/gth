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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/jquery.dataTables.min.css'/>">
    </head>
</head>

<body>
    <div id="contTable">
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
                                            <section>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                                <table id="example" class="table table-striped table-bordered table-hover" width="100%">
                                                    <thead>			                
                                                        <tr>
                                                            <th data-hide="phone">N°</th>
                                                            <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Apellidos y Nombres</th>
                                                            <th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> DNI</th>
                                                            <th><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>AREA</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> SECCION</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>PUESTO</th>
                                                            <th data-hide="phone,tablet"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i>OPC</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr id="data">
                                                            <td>1</td>
                                                            <td>Jennifer</td>
                                                            <td>1-342-463-8341</td>
                                                            <td>Et Rutrum Non Associates</td>
                                                            <td>35728</td>
                                                            <td>Fogo</td>
                                                            <td>OPC</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                    </section>
                                </div>
                            </article>
                        </div>

                    </section>


                <section id="widget-grid" class="col-md-6">
                    <div class="row">
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">


                           
                            <div class="well well-sm"><div class=""><label>Horario escaneado</label>  </div> <div class=" caji13"> <div class="file-input file-input-new"><div class="file-preview ">
                            <div class="close fileinput-remove">×</div>
                            <div class="file-drop-disabled">
                            <div class="file-preview-thumbnails">
                            </div>
                            <div class="clearfix"></div>    <div class="file-preview-status text-center text-success"></div>
                            <div class="kv-fileinput-error file-error-message" style="display: none;"></div>
                            </div>
                             </div>
                          <div class="input-group file-caption-main">
                            <div class="input-group-btn">
                                <div tabindex="500" class="btn btn-primary btn-sm btn-file"><i class="glyphicon glyphicon-folder-open"></i>&nbsp;  <span class="hidden-xs" id="file-3">Examinar …</span><input class="fileDocument" type="file" multiple="true" name="archivos13" id="file-"></div>
                               <button type="button" tabindex="500" title="Quitar archivos seleccionados" class="btn btn-danger btn-sm fileinput-remove fileinput-remove-button"><i class="glyphicon glyphicon-trash"></i>  <span class="hidden-xs">Quitar</span></button>
                           </div>
                           <div tabindex="500" class="form-control file-caption  kv-fileinput-caption">
                           <div class="file-caption-name"></div>
                              </div>

                              </div></div></div> <div class=""><input type="text" placeholder="Escribe una descripción" class="form-control" name="lob_description13"></div> <div class="">  <label>¿Recibido en fisico?:</label> <label class="toggle"><input type="checkbox" value="1" name="estado13"> <i data-swchon-text="SI" data-swchoff-text="NO"></i></label></div><div class=""> </div>  </div>
                            

                        </article>
                            <div class="container">
        <h1>Bootstrap File Input Example</h1>
        <form enctype="multipart/form-data">
        <div class="form-group">
        <input id="file-1" type="file" class="file" multiple=true data-preview-file-type="any">
        </div>
        <div class="form-group">
        <input id="file-2" type="file" class="file" readonly=true>
        </div>
        <div class="form-group">
        <input id="file-3" type="file" multiple=true>
        </div>
        <div class="form-group">
        <button class="btn btn-primary">Submit</button>
        <button class="btn btn-default" type="reset">Reset</button>
        </div>
        </form>
        </div>
                    </div>

                </section>
            </div>

   </div>
    <!-- END SHORTCUT AREA -->
    <!--Cositas-->
    <script>
    $("#file-3").fileinput({
    showCaption: false,
    browseClass: "btn btn-primary btn-lg",
    fileType: "any"
    });
    </script>
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
    <script type="text/javascript" src="<c:url value='resources/js/operacionesBuscar.js'/>"></script>
    <script type="text/javascript" src="<c:url value='resources/js/jquery.dataTables.min.js'/>"></script>
    </body>
    
    

 <script>
         $(document).ready(function () {
            list(); 
         });
        
        function list() {
            var url = "renuncia?opc=status";//nombre del controlador ejm. renuncia?op=1
            //var data = "";//atributos a mandar ejm. idusuario=$("#idu").val();
            //data += "&iduser=";//comienza con --> &
            try {
                $.getJSON(url, function (objJson) {
                    var lista = objJson.pr;
                    if (lista.length > 0) {
                        var m = "";
                        for (var i = 0; i < lista.length; i++) {
                            m += '<tr>';
                            m += '<td>'+ lista[i].AP_PATERNO + '  ' + lista[i].AP_MATERNO + ' , ' +lista[i].NO_TRABAJADOR +'</td>';// cambiar por el atributo que te da en tu DAO
                            m += '<td>' + lista[i].NU_DOC + '</td>';
                            m += '<td>' + lista[i].AP_MATERNO + '</td>';
                            m += '<td>' + lista[i].NO_AREA + '</td>';
                            m += '<td>' + lista[i].NO_SECCION + '</td>';
                            m += '</tr>';
                        }
                        //$("#example").empty();
                        //$("#example").append(createTable());
                        $("#data").empty();
                        $("#data").append(m);
                        $.dataTable();
                    } else {
                        console.log("No hay datos en la tabla");
                    }
                });
            } catch (e) {
                console.error("Error al listar : " + e);
            }

        }
        function createTable() {
            var s = '<table>';
            s += '<thead>';
            s += '<tr><th>Nombre</th><th>Apellidos</th><th>DNI</th></tr>';
            s += '</thead>';
            s += '<tbody id="data"></tbody>';
            s += '</table>';
            return s;
        }
    </script>
</html>
