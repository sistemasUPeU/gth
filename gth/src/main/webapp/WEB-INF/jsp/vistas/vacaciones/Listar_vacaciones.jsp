<%-- 
    Document   : index
    Created on : 13-jul-2017, 9:49:04
    Author     : JoseRayo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Vacaciones</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/bootstrap.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/font-awesome.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/smartadmin-production-plugins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/smartadmin-skins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/demo.min.css'/>">
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/datatable.css'/>" />

    </head>
    <body>

    </head>
<body>
    <div id="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="well">
                    <h1><span class="semi-bold">Lista</span> <i class="ultra-light">De Vacaciones</i> (Trabajadores) <sup class="badge bg-color-red bounceIn animated">v 2.0</sup> <br>
                        <small class="text-danger slideInRight fast animated"><strong>Inicio de Vacaciones</strong></small></h1>

                </div>
            </div>
        </div>
        <!-- MAIN PANEL -->
        <div id="main" role="main" style="margin-left: 0px;">
            <!-- MAIN CONTENT -->
            <div id="content">
                <!-- widget grid -->
                <section id="widget-grid" class="">

                    <!-- row -->
                    <div class="row">

                        <!-- NEW WIDGET START -->
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-1" data-widget-editbutton="false">
                                <header>
                                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                    <h2>Lista de Empleados </h2>

                                </header>

                                <div>
                                    <div class="jarviswidget-editbox">
                                    </div>
                                    <div class="widget-body no-padding" id="tablecont">
                                    </div>
                                </div>
                            </div>
                        </article>
                        <footer>
                            <center>
                                <button type="submit" id='btnsbt' class="btn btn-primary">
                                    Enviar Lista de  Empelados  </button>
                            </center>
                        </footer>

                    </div>
                </section>
            </div>
        </div>
        <div class="modalContent"></div>
    </div>
    <script type="text/javascript" src="<c:url value='/resources/js/libs/jquery-2.1.1.min.js'/>" ></script>        
    <script type="text/javascript" src="<c:url value='/resources/js/app.config.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>"></script> 
    <script type="text/javascript" src="<c:url value='/resources/js/bootstrap/bootstrap.min.js'/>"></script><!-- bootstrap min.js-->
    <script type="text/javascript" src="<c:url value='/resources/js/notification/SmartNotification.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/smartwidgets/jarvis.widget.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/sparkline/jquery.sparkline.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/jquery-validate/jquery.validate.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/masked-input/jquery.maskedinput.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/msie-fix/jquery.mb.browser.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/fastclick/fastclick.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/app.min.js'/>"></script> 
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/datatables/jquery.dataTables.min.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/datatables/dataTables.colVis.min.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/datatables/dataTables.tableTools.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/datatables/dataTables.bootstrap.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/plugin/datatable-responsive/datatables.responsive.min.js'/>"></script>

    <script>
        function listar() {
            $.ajax({
                url: 'vac_emple',
                type: 'POST',
                async: true,
                data: '',
                success: function (objJson) {
                    var lista = objJson.list;
                    var s = '';
                    if (lista.length > 0) {
                        for (var i = 0; i < lista.length; i++) {
                            s += '<tr>';
                            s += '<td><a href="asig?id=' + lista[i].ID + '">' + lista[i].NOM + ' , ' + lista[i].A_P + '  ' + lista[i].A_M + '</a></td>';// cambiar por el atributo que te da en tu DAO
                            s += '<td>' + lista[i].NO_AREA + '</td>';
                            s += '<td>' + lista[i].NO_SECCION + '</td>';
                            s += '<td>' + lista[i].NO_PUESTO + '</td>';
                            s += '<td>' + lista[i].FE + '</td>';
                            s += '<td>' + lista[i].FE2 + '</td>';
                            s += '<td><center><p id="checkBoxes"><input type="checkbox" class="checkBoxClass" value="' + lista[i].ID + '" /></p></center></td>';
                            s += '</tr>';
                        }
                        $("#tablecont").empty();
                        $("#tablecont").append(creartable());
                        $("#data").empty();
                        $("#data").append(s);
                        $("#ckbCheckAll").click(function () {
                            $(".checkBoxClass").prop('checked', $(this).prop('checked'));
                        });
                        function getSelected() {
                            var allVals = [];
                            $('#data :checked').each(function () {
                                allVals.push($(this).val());
                            });
                            return allVals;
                        }
                        var responsiveHelper_dt_basic = undefined;
                        var responsiveHelper_datatable_fixed_column = undefined;
                        var responsiveHelper_datatable_col_reorder = undefined;
                        var responsiveHelper_datatable_tabletools = undefined;

                        var breakpointDefinition = {
                            tablet: 1024,
                            phone: 480
                        };
                        /* COLUMN FILTER  */
                        var otable = $('#datatable_fixed_column').DataTable({
                            //"bFilter": false,
                            //"bInfo": false,
                            //"bLengthChange": false
                            //"bAutoWidth": false,
                            //"bPaginate": false,
                            //"bStateSave": true // saves sort state using localStorage
                            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>" +
                                    "t" +
                                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                            "autoWidth": true,
                            "preDrawCallback": function () {
                                // Initialize the responsive datatables helper once.
                                if (!responsiveHelper_datatable_fixed_column) {
                                    responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
                                }
                            },
                            "rowCallback": function (nRow) {
                                responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
                            },
                            "drawCallback": function (oSettings) {
                                responsiveHelper_datatable_fixed_column.respond();
                            }

                        });

                        // custom toolbar
                        // $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');

                        // Apply the filter
                        $("#datatable_fixed_column thead th input[type=text]").on('keyup change', function () {

                            otable
                                    .column($(this).parent().index() + ':visible')
                                    .search(this.value)
                                    .draw();

                        });
                        /* END COLUMN FILTER */
                        //$("#ckbCheckAll").append(checkbox());
                        $("#btnsbt").click(function () {
                            var arrid = getSelected();
                            console.log(arrid);
                        });

                    }
                }
            });
        }
        function creartable() {
            var s = '<table id="datatable_fixed_column"  class="table table-striped table-bordered" width="100%">';
            s += '<thead>';
            s += '<tr>';
            s += '<th class="hasinput" style="width:17%">';
            s += '<input type="text" class="form-control" placeholder="Filtro Nombres" />';
            s += '</th>';
            s += '<th class="hasinput" style="width:18%">';
            s += '<input class="form-control" placeholder="Filtro Area" type="text">';
            s += '</th>';
            s += '<th class="hasinput" style="width:16%">';
            s += '<input type="text" class="form-control" placeholder="Filtro Seccion" />';
            s += '</th>';
            s += '<th class="hasinput" style="width:17%">';
            s += '<input type="text" class="form-control" placeholder="Filtro Puesto" />';
            s += '</th>';
            s += '<th class="hasinput" style="width:17%">';
            s += '<input type="text" class="form-control" placeholder="Filtro Fecha Inicio" />';
            s += '</th>';
            s += '<th class="hasinput" style="width:16%">';
            s += '<input type="text" class="form-control" placeholder="Filtro Fecha Fin" />';
            s += '</th>';
            s += '</tr>';
            s += '<tr>';
            s += '<th data-hide="expand">Nombres y Apellidos</th>';
            s += '<th data-hide="phone">Area</th>';
            s += '<th data-hide="phone,tablet">Seccion</th>';
            s += '<th data-hide="phone,tablet">Puesto</th>';
            s += '<th data-hide="phone,tablet">Fecha Inicio</th>';
            s += '<th data-hide="phone,tablet">Fecha Fin</th>';
            s += '<th>Seleccionar<center><input type="checkbox" id="ckbCheckAll" /></center></th>';
            s += '</tr>';
            s += '</thead>';
            s += '<tbody id="data">';
            s += '</tbody>';
            s += '</table>  ';
            return s;




        }

        // DO NOT REMOVE : GLOBAL FUNCTIONS!

        $(document).ready(function () {
            pageSetUp();
            //console.log("se listo correctamente");
            listar();

        });

    </script>   
</body>
</html>
