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
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/jquery.dataTables.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/jquery.dataTables.min.css'/>">
    </head>
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
                            </ul>
                        </header>
                        <div class="no-padding">
                            <div class="widget-body">
                                <div class="tab-pane fade active in padding-10 no-padding-bottom" id="s1">
                                    <div id="dt_basic_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="dt-toolbar"><div class="col-xs-12 col-sm-6"><div id="dt_basic_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control" placeholder="" aria-controls="dt_basic"></label></div></div><div class="col-sm-6 col-xs-12 hidden-xs"><div class="dataTables_length" id="dt_basic_length"><label>Show <select name="dt_basic_length" aria-controls="dt_basic" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div></div><table id="dt_basic" class="table table-striped table-bordered table-hover dataTable no-footer has-columns-hidden" width="100%" role="grid" aria-describedby="dt_basic_info" style="width: 100%;">
                                                    <thead>
                                                        <tr role="row"><th data-hide="phone" class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-label="Nro: activate to sort column ascending" style="width: 31px;">Nro</th><th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-label="MES: activate to sort column ascending" style="width: 39px;">MES</th><th data-class="expand" class="expand sorting_asc" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-label="Nombre: activate to sort column descending" style="width: 379px;" aria-sort="ascending">Nombre</th><th data-class="expand" style="width: 312px;" class="expand sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-label="Proceso: activate to sort column ascending">Proceso</th><th class="sorting" tabindex="0" aria-controls="dt_basic" rowspan="1" colspan="1" aria-label="Estado: activate to sort column ascending" style="width: 73px;">Estado</th></tr>
                                                    </thead>
                                                    <tbody>
                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    

                                                    
                                                    
                                                    <tr role="row" class="odd">
                                                        <td class=""><strong>22</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003985" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003985&amp;opc=list"> 
                                                                <strong>ALVAREZ  CUTIPA  VICTOR ALEJANDRO </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001980&amp;idrp=DRP-000179&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="even">
                                                        <td class=""><strong>55</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003944" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003944&amp;opc=list"> 
                                                                <strong>AQUINO FIERRO ESTEFANY PILAR </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001932&amp;idrp=DRP-000179&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="odd">
                                                        <td class=""><strong>41</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003958" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003958&amp;opc=list"> 
                                                                <strong>ARAUJO  VASQUEZ  LEUCADIA </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001952&amp;idrp=DRP-000178&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="even">
                                                        <td class=""><strong>26</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003981" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003981&amp;opc=list"> 
                                                                <strong>ARTEAGA YANCUL CRISTOPHER ALEXIS</strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001976&amp;idrp=DRP-000133&amp;iddep=DPT-0001" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion DGP" data-content="Coordinador de RRHH - sandibelly                                         - SANDIBELLY  SOTELO <BR>Coordinador de RRHH - tercero                                            - Tercero  Pezo <BR>Asistente de Gerencia - 48017192                                           - LUZ MERCEDES  QUISPE <BR>Asistente de Gerencia - 76790557                                           - WENDY ELIZABETH  CISNEROS  <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizacion DGP" data-content="Gerente Productos Uni?n - alvaro                                             - ALVARO AUGUSTO  MASIAS <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Verificar Requisitos DGP y Documentacion Completa" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title="Entregar y/o enviar documentos, reglamentos  y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P7    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="odd">
                                                        <td class=""><strong>28</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003978" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003978&amp;opc=list"> 
                                                                <strong>BAIL?N  CASTRO ELMEN ROM?N </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001973&amp;idrp=DRP-000178&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="even">
                                                        <td class=""><strong>46</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003957" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003957&amp;opc=list"> 
                                                                <strong>BERROSPI MAYTA TALIA  IGNA</strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001946&amp;idrp=DRP-000133&amp;iddep=DPT-0001" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion DGP" data-content="Coordinador de RRHH - sandibelly                                         - SANDIBELLY  SOTELO <BR>Coordinador de RRHH - tercero                                            - Tercero  Pezo <BR>Asistente de Gerencia - 48017192                                           - LUZ MERCEDES  QUISPE <BR>Asistente de Gerencia - 76790557                                           - WENDY ELIZABETH  CISNEROS  <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizacion DGP" data-content="Gerente Productos Uni?n - alvaro                                             - ALVARO AUGUSTO  MASIAS <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Verificar Requisitos DGP y Documentacion Completa" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title="Entregar y/o enviar documentos, reglamentos  y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P7    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="odd">
                                                        <td class=""><strong>20</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003987" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003987&amp;opc=list"> 
                                                                <strong>CABANILLAS CHAVARRIA  FIORELLA YORSHINA</strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001982&amp;idrp=DRP-000178&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="even">
                                                        <td class=""><strong>18</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003989" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003989&amp;opc=list"> 
                                                                <strong>CARDOSO BRUNO D'PADUA</strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001984&amp;idrp=DRP-000133&amp;iddep=DPT-0001" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion DGP" data-content="Coordinador de RRHH - sandibelly                                         - SANDIBELLY  SOTELO <BR>Coordinador de RRHH - tercero                                            - Tercero  Pezo <BR>Asistente de Gerencia - 48017192                                           - LUZ MERCEDES  QUISPE <BR>Asistente de Gerencia - 76790557                                           - WENDY ELIZABETH  CISNEROS  <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizacion DGP" data-content="Gerente Productos Uni?n - alvaro                                             - ALVARO AUGUSTO  MASIAS <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Verificar Requisitos DGP y Documentacion Completa" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title="Entregar y/o enviar documentos, reglamentos  y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P7    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="odd">
                                                        <td class=""><strong>7</strong></td>
                                                        <td>JUNIO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003839" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003839&amp;opc=list"> 
                                                                <strong>CARRILLO PANTOJA ARNOLD SAMUEL </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001996&amp;idrp=DRP-000178&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P2    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P3    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P4    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P5    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P6    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P7    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P8    </span> </div> <span class="new-bar "></span> <div class="new-circle" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-lock"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr><tr role="row" class="even">
                                                        <td class=""><strong>30</strong></td>
                                                        <td>MAYO</td>
                                                         
                                                        
                                                        <td class="expand sorting_1"><img class="user_avatar_TRB-003972" src="../../img/avatar_default.jpg" width="30" height="30">
                                                            <a style="margin-left: 3%;" href="../../trabajador?idtr=TRB-003972&amp;opc=list"> 
                                                                <strong>CHAPO??N  ADANAQU?  MIGUEL ANGEL </strong></a>
                                                        </td>
                                                        
                                                        <td class=" expand"><span class="responsiveExpander"></span>
                                                            
                                                            <div class="new-progress prog_aut" data-value="&amp;dgp=DGP-001971&amp;idrp=DRP-000178&amp;iddep=DPT-0003" style="display: block;"> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaborar Requerimiento" data-content="Secretaria - mariana                                            - Mariana del Pilar  Sangama <BR>Secretaria - edesabel                                           - Edesabel  Sanca <BR>" data-html="true"><span class="new-label">✔</span><span class="new-title">P1    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Tesorero(a)" data-content="Tesorero(a) - rober                                              - Rober  Martinez <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P2    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title="Autorizar Requerimiento - Gerente de Servicios" data-content="Gerente - walter                                             - WALTER MARTIN  FARFAN <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P3    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - Gerente General" data-content="Gerente - julio                                              - JULIO CESAR  RENGIFO <BR>Gerente General - nilton                                             - NILTON  ACU?A <BR>Gerente - sara                                               - SARA FLOR  TICONA <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P4    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Autoriza Requerimiento - SEC GTH" data-content="Secretaria - 16724235                                           - Carolina Janet  Becerra <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P5    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Elaboracion de Contrato o Convenio" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P6    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Enviar a Remuneraciones" data-content="Analista de Relaciones Laborales - GustavoCR7                                         - GUIBERT GUSTAVO  GOMEZ <BR>Auxiliar de Contrataciones - 45375624                                           - SOCORRO DEL PILAR  SUAREZ <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P7    </span> </div> <span class="new-bar done"></span> <div class="new-circle done" rel="popover-hover" data-placement="top" data-original-title=" Registrar en el Sistema de Remuneraciones" data-content="Director de Remuneraciones y Compensaciones - vilma                                              - VILMA RUTH  IDROGO <BR> " data-html="true"><span class="new-label">✔</span><span class="new-title">P8    </span> </div> <span class="new-bar active"></span> <div class="new-circle active" rel="popover-hover" data-placement="top" data-original-title=" Entregar y/o enviar documentos, reglamentos y otros al trabajador" data-content="Analista Sistemas - 43421244                                           - IVAN WILMER  HUAMAN <BR> " data-html="true"><span class="new-label fa fa-inbox"></span><span class="new-title">P9    </span> </div></div>

                                                        </td>
                                                        
                                                        
                                                        
                                                        <td>
                                                             <span class="label label-primary">En Proceso</span>
                                                        </td>

                                                    </tr></tbody>
                                                </table><div class="dt-toolbar-footer"><div class="col-sm-6 col-xs-12 hidden-xs"><div class="dataTables_info" id="dt_basic_info" role="status" aria-live="polite">Showing 1 to 10 of 59 entries</div></div><div class="col-xs-12 col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="dt_basic_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="dt_basic_previous"><a href="#" aria-controls="dt_basic" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="dt_basic" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="dt_basic" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="dt_basic" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="dt_basic" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="dt_basic" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="dt_basic" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="dt_basic_next"><a href="#" aria-controls="dt_basic" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
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
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
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
