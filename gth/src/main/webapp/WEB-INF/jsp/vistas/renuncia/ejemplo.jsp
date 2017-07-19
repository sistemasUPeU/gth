<%-- 
    Document   : newjsp
    Created on : 19/07/2017, 03:00:20 PM
    Author     : Leandro Burgos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../../../jspf/general.jspf" %>
        <link href="<c:url value='resources/css/datatable.css" rel="stylesheet'/>" type="text/css"/>
    </head>
    <body>
        
        <div id="conTable" class="col col-md-8">
            
        </div>

        <%@include file="../../../../jspf/scripts.jspf" %>
        <script src="<c:url value='resources/js/plugin/datatables/datatable.js'/>" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                console.log("si");    
                listPrivilegios();
            });

            function listPrivilegios() {
                try {
                    $.getJSON('components?opc=privilegios', function (objJson) {
                        var lista = objJson.pr;
                        var s = '';
                        if (lista.length > 0) {
                            for (var i = 0; i < lista.length; i++) {
                                s+='<tr>';
                                s+='<td>'+lista[i].NO_MODULO+'</td>';
                                s+='<td>'+lista[i].IC_LINK+'</td>';
                                s+='<td>'+lista[i].NO_LINK+'</td>';
                                s+='<td>'+lista[i].DI_URL+'</td>';
                                s+='<td>'+lista[i].ID_PRIVILEGIO+'</td>';
                                s+='</tr>';
                            }
                            $("#conTable").empty();
                            $("#conTable").append(createTable());
                            $("#data").empty();
                            $("#data").append(s);
                            $("#dt_basic").dataTable();
                        }
                    });
                } catch (e) {
                    console.error(e);
                }
            }

            function createTable() {
                var s = '<table id="dt_basic" class="table table-striped table-bordered table-hover">';
                s += '<thead>';
                s += '<th>Nombre modulo</th>';
                s += '<th>icono</th>';
                s += '<th>Link</th>';
                s += '<th>direccion</th>';
                s += '<th>id</th>';
                s += '</tr>';
                s += '</thead>';
                s += '<tbody id="data">';
                s += '</tbody>';
                s += '</table>';
                return s;
            }




        </script>
    </body>
</html>
