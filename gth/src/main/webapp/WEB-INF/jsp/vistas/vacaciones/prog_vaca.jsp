<%-- 
    Document   : prog_vacaciones
    Created on : 17/01/2017, 03:48:03 PM
    Author     : Cesar
--%>

<%@page import="pe.edu.upeu.gth.dao.vacacionesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

        <title>Programar Vacaciones</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- file-input csss-->
         <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/file-input/fileinput-rtl.min.css'/>">
         <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/file-input/fileinput.min.css'/>">

        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/bootstrap.min.css'/>">
        <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-production.min.css'/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-skins.min.css'/>">


        <!-- SmartAdmin RTL Support -->

        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/smartadmin-rtl.min.css'/>">

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value='resources/css/demo.min.css'/>">

        <!-- FAVICONS -->
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value='resources/img/favicon/favicon.ico'/>">
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value='resources/img/favicon/favicon.ico'/>">
        <link rel="icon" type="image/x-icon" href="<c:url value='resources/img/favicon/favicon.ico'/>">


        <link rel="icon" href="../../img/favicon/favicon.ico" type="image/x-icon">

        <!-- GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

        <!-- Specifying a Webpage Icon for Web Clip 
                 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
        <link rel="apple-touch-icon" media="screen" href="<c:url value='resources/img/splash/sptouch-icon-iphone.png'/>">
        <link rel="apple-touch-icon"  href="<c:url value='resources/img/splash/sptouch-icon-iphone.png'/>">
        <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='resources/img/splash/touch-icon-ipad.png'/>">
        <link rel="apple-touch-icon"  href="../../img/splash/touch-icon-ipad.png">
        <link rel="apple-touch-icon" sizes="120x120" href="../../img/splash/touch-icon-iphone-retina.png">
        <link rel="apple-touch-icon" sizes="152x152" href="../../img/splash/touch-icon-ipad-retina.png">

        <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <!-- Startup image for web apps -->

        <link rel="apple-touch-startup-image" href="../../img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
        <link rel="apple-touch-startup-image" href="../../img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
        <link rel="apple-touch-startup-image" href="../../img/splash/iphone.png" media="screen and (max-device-width: 320px)">

    </head>
    <body>

        <article class="col-sm-6 col-md-6 col-lg-3"></article>
        <!-- widget grid -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <!-- widget options:
                    usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                    data-widget-colorbutton="false"
                    data-widget-editbutton="false"
                    data-widget-togglebutton="false"
                    data-widget-deletebutton="false"
                    data-widget-fullscreenbutton="false"
                    data-widget-custombutton="false"
                    data-widget-collapsed="true"
                    data-widget-sortable="false"

                    -->

                    <header>
                        <span class="widget-icon"> <i class="fa fa-check"></i> </span>
                        <h2>Programación de fechas</h2> 

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body no-padding">
                            <form class="smart-form" method="post" action="archivos"enctype="multipart/form-data">
                                <header>
                                    Programacion de vacaciones  - Datos del trabajador
                                </header>
                                <fieldset>
                                    <div class="row">
                                        <section class="col col-6">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Nombres:</label>
                                            <label id='nombres' class="input" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">
                                            </label>
                                        </section>
                                    </div>
                                    <div class="row">
                                        <section class="col col-6">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Correo:</label>
                                            <label class="input" id="correo" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">

                                            </label>
                                        </section>
                                        <section class="col col-6">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Fecha de nacimiento</label>
                                            <label class="input" id="fecha" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">
                                                
                                            </label>
                                        </section>
                                    </div>
                                    <div class="row">
                                        <section class="col col-4">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Sexo</label>
                                            <label class="input" id="sexo" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">
                                                
                                            </label>
                                        </section>
                                        <section class="col col-2">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Documento</label>
                                            <label class="input" id="tip_doc" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">
                                                
                                            </label>
                                        </section>
                                        <section class="col col-2">
                                            <label style="color: #005cac; font-weight: bold; font-size: 1vh;">Número de documento</label>
                                            <label class="input" id="num_doc" style="font-weight: bold; font-family:Arial; font-size: 0.8vh;">
                                                
                                            </label>
                                        </section>
                                       
                                    </div>
                                    <div class="row">
                                        <div class="col col-12 text-center">
                                            <h3><label>Seleccionar rango de fechas a solicitar:</label></h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col col-2"></div>
                                        <section class="row col col-6 dateranges ">
                                            <div style="padding-bottom: 5px;" class="row col col-12 rangegroup1">
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
                                    <div class="row">
                                        <div class="col-2"></div>
                                        <div class="col col-10">
                                            <h3><label>Total de días:</label><label style="color: #005cac;" id="ntd">0</label></h3>
                                        </div>
                                    </div> 
                                    
                                    <div class="col col-sm-3" style="margin-left:  35%;">
                                        <label class="control-label">Adjuntar archivos</label>
                                        <input id="files" type="file" name="files" class="file-loading" data-show-upload="false" data-show-remove="false" data-show-caption="true" accept="document/*">                               
                                    </div>
                                    
                                </fieldset>
                                <footer>
                                    <input type="hidden" name="opc" value="VacationAsign">
                                    <input type="hidden" name="iddgp" value="">
                                    <input type="hidden" name="idtra" value="">
                                    <button id="submitbtn" type="submit" class="btn btn-labeled btn-success">
                                        Registrar
                                    </button>
                                    <button type="button" id="cancelbtn" class="btn btn-labeled btn-danger">
                                        Cancelar
                                    </button>
                                </footer>
                            </form>
                        </div>
                    </div>
                </div>
            </article>
        </div>


        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
                                                                    if (!window.jQuery) {
                                                                        document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
                                                                    }
        </script>

        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script>
                                                                    if (!window.jQuery.ui) {
                                                                        document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
                                                                    }
        </script>

        <!-- IMPORTANT: APP CONFIG -->

        <!--IMPORTANTE : FILE INPUTS-->
        
                <script src="<c:url value='resources/js/plugin/file-input/fileinput.js'/>" ></script>
                <script src="<c:url value='resources/js/plugin/file-input/fileinput.min.js'/>" ></script>

        <script src="<c:url value='resources/js/app.config.js'/>" ></script>
        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
        <script src="<c:url value='resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js'/>" ></script>

        <!-- BOOTSTRAP JS -->
        <script src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>" ></script>

        <!-- CUSTOM NOTIFICATION -->
        <script src="<c:url value='resources/js/notification/SmartNotification.min.js'/>" ></script>      

        <!-- JARVIS WIDGETS -->
        <script src="<c:url value='resources/js/smartwidgets/jarvis.widget.min.js'/>" ></script>      

        <!-- EASY PIE CHARTS -->
        <script src="<c:url value='resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js'/>" ></script>      
        <!-- SPARKLINES -->
        <script src="<c:url value='resources/js/plugin/sparkline/jquery.sparkline.min.js'/>" ></script>      
        <!-- JQUERY VALIDATE -->
        <script src="<c:url value='resources/js/plugin/jquery-validate/jquery.validate.min.js'/>" ></script>      

        <!-- JQUERY MASKED INPUT -->
        <script src="<c:url value='resources/js/plugin/masked-input/jquery.maskedinput.min.js'/>" ></script>      
        <!-- JQUERY SELECT2 INPUT -->
        <script src="<c:url value='resources/js/plugin/select2/select2.min.js'/>" ></script>      
        <!-- JQUERY UI + Bootstrap Slider -->
        <script src="<c:url value='resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js'/>" ></script>
        <!-- browser msie issue fix -->
        <script src="<c:url value='resources/js/plugin/msie-fix/jquery.mb.browser.min.js'/>" ></script>
        <!-- FastClick: For mobile devices -->
        <script src="<c:url value='resources/js/plugin/fastclick/fastclick.min.js'/>" ></script>


        <!--[if IE 8]>

        <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

        <![endif]-->

        <!-- Demo purpose only -->
        <script src="<c:url value='resources/js/demo.min.js'/>" ></script>

        <!-- MAIN APP JS FILE -->
        <script src="<c:url value='resources/js/app.min.js'/>" ></script>

        <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
        <!-- Voice command : plugin -->
        <script src="<c:url value='resources/js/speech/voicecommand.min.js'/>" ></script>        
        <!-- SmartChat UI : plugin -->
        <script src="<c:url value='resources/js/smart-chat-ui/smart.chat.ui.min.js'/>" ></script>        
        <script src="<c:url value='resources/js/smart-chat-ui/smart.chat.manager.min.js'/>" ></script>        
        <!-- PAGE RELATED PLUGIN(S) -->
        <script src="<c:url value='resources/js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js'/>" ></script>   
        <script src="<c:url value='resources/js/plugin/fuelux/wizard/wizard.min.js'/>" ></script>   

       

        <script type="text/javascript">

                                                                    // DO NOT REMOVE : GLOBAL FUNCTIONS!

                                                                    var nr = 1;
                                                                    $(document).ready(function () {
                                                                        ///script para input-file/*limite*tamaño*extension//
                                                                          $("#files").fileinput({
                                                                            uploadUrl: "http://localhost:8080/gth/resources/archivos/vacaciones/",
                                                                            allowedFileExtensions: ["pdf", "doc", "docx","jpg"],
                                                                            maxImageWidth: 250,
                                                                            maxImageHeight: 250,
                                                                            initialPreviewFileType:'docx',
                                                                            browseOnZoneClick: true,
                                                                            dropZoneTitle:'Arrastre y suelte archivos aquí ... ',
                                                                            
                                                                        });
                                                                       
                                                                        
                                                                        $.post('returnjson', function (obj) {
                                                                        
                                                                            var trab = obj[0];
                                                                            $("#nombres").text(trab.NOM + " " + trab.AP_P + " " + trab.AP_M);
                                                                            $("#correo").text(trab.CORREO);
                                                                            $("#fecha").text(trab.F);
                                                                            $("#sexo").text(trab.SEXO);
                                                                            $("#num_doc").text(trab.N_D);
                                                                            var o = trab.T;
                                                                            if (o === '1') {
                                                                                $("#tip_doc").text('DNI');
                                                                            } else {
                                                                                $("#tip_doc").text('Otros');
                                                                            }


                                                                        });

                                                                        pageSetUp();

                                                                        // Date Range Picker
                                                                        $("#from1").datepicker({
                                                                            defaultDate: "+1w",
                                                                            changeMonth: true,
                                                                            numberOfMonths: 2,
                                                                            prevText: '<i class="fa fa-chevron-left"></i>',
                                                                            nextText: '<i class="fa fa-chevron-right"></i>',
                                                                            onClose: function (selectedDate) {
                                                                                $("#to1").datepicker("option", "minDate", selectedDate);
                                                                            }

                                                                        });
                                                                        $("#to1").datepicker({
                                                                            defaultDate: "+1w",
                                                                            changeMonth: true,
                                                                            numberOfMonths: 2,
                                                                            prevText: '<i class="fa fa-chevron-left"></i>',
                                                                            nextText: '<i class="fa fa-chevron-right"></i>',
                                                                            onClose: function (selectedDate) {
                                                                                $("#from1").datepicker("option", "maxDate", selectedDate);
                                                                            }
                                                                        });





                                                                        //Bootstrap Wizard Validations

                                                                        var $validator = $("#wizard-1").validate({
                                                                            rules: {
                                                                                email: {
                                                                                    required: true,
                                                                                    email: "Your email address must be in the format of name@domain.com"
                                                                                },
                                                                                fname: {
                                                                                    required: true
                                                                                },
                                                                                lname: {
                                                                                    required: true
                                                                                },
                                                                                country: {
                                                                                    required: true
                                                                                },
                                                                                city: {
                                                                                    required: true
                                                                                },
                                                                                postal: {
                                                                                    required: true,
                                                                                    minlength: 4
                                                                                },
                                                                                wphone: {
                                                                                    required: true,
                                                                                    minlength: 10
                                                                                },
                                                                                hphone: {
                                                                                    required: true,
                                                                                    minlength: 10
                                                                                }
                                                                            },
                                                                            messages: {
                                                                                fname: "Please specify your First name",
                                                                                lname: "Please specify your Last name",
                                                                                email: {
                                                                                    required: "We need your email address to contact you",
                                                                                    email: "Your email address must be in the format of name@domain.com"
                                                                                }
                                                                            },
                                                                            highlight: function (element) {
                                                                                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                                                                            },
                                                                            unhighlight: function (element) {
                                                                                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                                                                            },
                                                                            errorElement: 'span',
                                                                            errorClass: 'help-block',
                                                                            errorPlacement: function (error, element) {
                                                                                if (element.parent('.input-group').length) {
                                                                                    error.insertAfter(element.parent());
                                                                                } else {
                                                                                    error.insertAfter(element);
                                                                                }
                                                                            }
                                                                        });

                                                                        $('#bootstrap-wizard-1').bootstrapWizard({
                                                                            'tabClass': 'form-wizard',
                                                                            'onNext': function (tab, navigation, index) {
                                                                                var $valid = $("#wizard-1").valid();
                                                                                if (!$valid) {
                                                                                    $validator.focusInvalid();
                                                                                    return false;
                                                                                } else {
                                                                                    $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass(
                                                                                            'complete');
                                                                                    $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step')
                                                                                            .html('<i class="fa fa-check"></i>');
                                                                                }
                                                                            }
                                                                        });


                                                                        // fuelux wizard
                                                                        var wizard = $('.wizard').wizard();

                                                                        wizard.on('finished', function (e, data) {
                                                                            //$("#fuelux-wizard").submit();
                                                                            //console.log("submitted!");
                                                                            $.smallBox({
                                                                                title: "Congratulations! Your form was submitted",
                                                                                content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
                                                                                color: "#5F895F",
                                                                                iconSmall: "fa fa-check bounce animated",
                                                                                timeout: 4000
                                                                            });

                                                                        });
                                                                        $("#submitbtn").click(function () {

                                                                        });

                                                                        $("#addrange").click(function () {
                                                                            var add = "";
                                                                            if (nr < 4) {
                                                                                nr = nr + 1;
                                                                                add += "<div style='padding-bottom: 5px;' class='row col col-12 rangegroup" + nr + "'>";
                                                                                add += "<div class='col col-6'>";
                                                                                add += "<div class='form-group'>";
                                                                                add += "<div class='input-group'>";
                                                                                add += "<input onchange='calnd()' class='form-control' id='from" + nr + "' type='text' placeholder='Desde'>";
                                                                                add += "<span class='input-group-addon'><i class='fa fa-calendar'></i></span>";
                                                                                add += "</div>";
                                                                                add += "</div>";
                                                                                add += "</div>";
                                                                                add += "<div class='col col-6 '>";
                                                                                add += "<div class='form-group'>";
                                                                                add += "<div class='input-group'>";
                                                                                add += "<input onchange='calnd()' class='form-control' id='to" + nr + "' type='text' placeholder='Hasta'>";
                                                                                add += "<span class='input-group-addon'><i class='fa fa-calendar'></i></span>";
                                                                                add += "</div>";
                                                                                add += "</div>";
                                                                                add += "</div>";
                                                                                add += "</div>";
                                                                                $(".dateranges").append(add);
                                                                                $("#from" + nr).datepicker({
                                                                                    defaultDate: "+1w",
                                                                                    changeMonth: true,
                                                                                    numberOfMonths: 2,
                                                                                    prevText: '<i class="fa fa-chevron-left"></i>',
                                                                                    nextText: '<i class="fa fa-chevron-right"></i>',
                                                                                    onClose: function (selectedDate) {
                                                                                        $("#to" + nr).datepicker("option", "minDate", selectedDate);
                                                                                    }

                                                                                });
                                                                                $("#to" + nr).datepicker({
                                                                                    defaultDate: "+1w",
                                                                                    changeMonth: true,
                                                                                    numberOfMonths: 2,
                                                                                    prevText: '<i class="fa fa-chevron-left"></i>',
                                                                                    nextText: '<i class="fa fa-chevron-right"></i>',
                                                                                    onClose: function (selectedDate) {
                                                                                        $("#from" + nr).datepicker("option", "maxDate", selectedDate);
                                                                                    }
                                                                                });
                                                                            } else {

                                                                            }
                                                                        });
                                                                        $("#delrange").click(function () {
                                                                            if (nr > 1) {
                                                                                $(".rangegroup" + nr).remove();
                                                                                nr = nr - 1;
                                                                                calnd();
                                                                            }
                                                                        });
                                                                    });
                                                                    function calnd() {
                                                                        var ntd = 0, datef = new Date(), datet = new Date();
                                                                        for (var i = 1; i <= nr; i++) {
                                                                            if ($("#from" + i).val() != "" && $("#to" + i).val() != "") {
                                                                                datef = new Date($("#from" + i).val());
                                                                                datet = new Date($("#to" + i).val());
                                                                                var dater = datet - datef;
                                                                                var rd = (((dater / 1000) / 60) / 60) / 24 + 1;
                                                                                ntd = ntd + rd;
                                                                            }
                                                                        }
                                                                        $("#ntd").text(ntd);
                                                                        if (ntd > 30) {
                                                                            $("#ntd").css("color", "#A90329");
                                                                        } else if (ntd == 30) {
                                                                            $("#ntd").css("color", "#1B641B");
                                                                        } else {
                                                                            $("#ntd").css("color", "#005cac");
                                                                        }
                                                                    }

        </script>

        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>



    </body>
</html>
