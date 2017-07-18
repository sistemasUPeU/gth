<%-- 
    Document   : RAautorizar
    Created on : 17/07/2017, 10:16:58 AM
    Author     : Leandro Burgos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                    </div>
                    <script>
                        function list() {
                            var url = "";//nombre del controlador ejm. renuncia?op=1
                            var data = "";//atributos a mandar ejm. idusuario=$("#idu").val();
                            data += "&iduser=";//comienza con --> &
                            try {
                                $.getJSON(url, data, function (objJson) {
                                    var lista = objJson.list;
                                    if (lista.length > 0) {
                                        var m = "";
                                        for (var i = 0; i < lista.length; i++) {
                                            m += '<tr>';
                                            m += '<td>' + lista[0].nombre + '</td>';// cambiar por el atributo que te da en tu DAO
                                            m += '<td>' + lista[0].nombre + '</td>';
                                            m += '<td>' + lista[0].nombre + '</td>';
                                            m += '</tr>';
                                        }
                                        $("#contTable").empty();
                                        $("#contTable").append(createTable());
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
                    </body>
                    </html>
