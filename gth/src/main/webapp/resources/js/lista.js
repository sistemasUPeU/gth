
function doseach() {
    var tabla = document.getElementById('table');
    var inputBuscar = document.getElementById('Buscar').value.toLowerCase();
    var cellsOfRow= "";
    var found= false;
    var compareWith="";
    
    //recoremos todas las filas de la tabla
    for (var i = 1; i < tabla.rows.length; i++) {
        cellsOfRow = tabla.rows[i].getElementsByTagName('td');
        found=false;  
    }
    //recorremos todas las celdas
    for (var j = 0; j < cellsOfRow.length && !found; j++) 
    {   
        compareWith = cellsOfRow[j].innerHTML.toLowerCase();
        //Buscamos el texto 
        if (inputBuscar.length == 0 || (compareWith.indexOf(inputBuscar)> -1))
       {
         found= true;
            
        }
    }
    if (found) {
       tabla.rows[i].style.display = ''; 
    }else{
        //si no encuentra ninguna concidencia esconde la fila de la lsta
        
        tabla.rows[i].style.display = 'none'; 
    } 
    
}