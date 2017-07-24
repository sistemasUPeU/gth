/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.web.controller.deliveryTerm;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cesar
 */
@Controller
public class CPlazo {

    /*@RequestMapping(value = "/plazo_dgp")
    public String plazo_dgp(HttpServletRequest request, HttpServletResponse response) {
        Plazo_DgpDAO pl = new Plazo_DgpDAO();
        Map<String, Object> rpta = new HashMap<String, Object>();
        HttpSession sesion = request.getSession(true);
        String opc = request.getParameter("opc");
        if (opc.equals("Mantenimiento")) {
            return "Vista/Dgp/Plazo/Reg_Plazo_Dgp.jsp";
        } else if (opc.equals("Ver_detalle_plazo")) {
            String iddgp = request.getParameter("iddgp");
            sesion.setAttribute("Lista_detalle_plazo", pl.Lista_detalle_plazo(iddgp));
            return ("vistas/Dgp/Plazo/Detalle_Plazo");
        } else {
            switch (opc) {
                case "Registrar":
                    String NO_PLAZO = request.getParameter("nombre_plazo");
                    String DET_ALERTA = request.getParameter("descripcion");
                    String FE_DESDE = request.getParameter("desde");
                    String FE_HASTA = request.getParameter("hasta");
                    String ID_REQUERIMIENTO = request.getParameter("id_req");
                    String TI_PLAZO = request.getParameter("tipo");
                    int CA_DIAS_TOLERANCIA = Integer.parseInt(request.getParameter("tolerancia"));
                    String ID_DEPARTAMENTO_TOLERANCIA = request.getParameter("dep_tolerancia");
                    String DEP = "0";
                    String AREA = "0";
                    if (request.getParameter("departamento") != null) {
                        if (!request.getParameter("departamento").equals("")) {
                            DEP = request.getParameter("departamento");
                        } else {
                            DEP = "0";
                        }
                    }
                    if (request.getParameter("area") != null) {
                        if (!request.getParameter("area").equals("")) {
                            AREA = request.getParameter("area");
                        } else {
                            AREA = "0";
                        }
                    }
                    pl.INSERT_PLAZO(null, NO_PLAZO, DET_ALERTA, FE_DESDE, FE_HASTA, "1", ID_REQUERIMIENTO.trim(), TI_PLAZO, CA_DIAS_TOLERANCIA, ID_DEPARTAMENTO_TOLERANCIA, DEP, AREA);
                    break;
                case "Modificar":
                    String ID_PLAZO = request.getParameter("ID");
                    NO_PLAZO = request.getParameter("nombre_plazo");
                    DET_ALERTA = request.getParameter("descripcion");
                    FE_DESDE = request.getParameter("desde");
                    FE_HASTA = request.getParameter("hasta");
                    String ES_PLAZO = "1";
                    ID_REQUERIMIENTO = request.getParameter("id_req");
                    TI_PLAZO = request.getParameter("tipo");
                    CA_DIAS_TOLERANCIA = Integer.parseInt(request.getParameter("tolerancia"));
                    ID_DEPARTAMENTO_TOLERANCIA = request.getParameter("dep_tolerancia");
                    DEP = "0";
                    AREA = "0";
                    pl.UPDATE_PLAZO(ID_PLAZO, NO_PLAZO, DET_ALERTA, FE_DESDE, FE_HASTA, ES_PLAZO, ID_REQUERIMIENTO, TI_PLAZO, CA_DIAS_TOLERANCIA, ID_DEPARTAMENTO_TOLERANCIA, DEP, AREA);
                    break;
                case "Listar":
                    String tipo = request.getParameter("tipo");
                    List<Map<String, ?>> lista = pl.List_Plazo(tipo);
                    rpta.put("rpta", "1");
                    rpta.put("lista", lista);
                    break;
                case "Listar_Plazo":
                    String id_dep = request.getParameter("departamento");
                    String id_area = request.getParameter("area");
                    tipo = request.getParameter("tipo");
                    String req = request.getParameter("id_req");
                    int dias = Integer.parseInt(request.getParameter("tolerancia"));
                    String dep = request.getParameter("dep_tolerancia");
                    lista = pl.Listar_Plazo(tipo, req, dias, dep, id_dep, id_area);
                    rpta.put("rpta", "1");
                    rpta.put("lista", lista);
                    break;
                case "Eliminar":
                    String id = request.getParameter("plz");
                    pl.REMOVE_PLAZO(id);
                    break;
                case "List_id_plazo":
                    id = request.getParameter("tipo");
                    String iddgp = request.getParameter("iddgp");
                    lista = pl.Listar_Plazo_id(id, iddgp);
                    rpta.put("rpta", "1");
                    rpta.put("lista", lista);
                    break;
                case "fecha_habilitada":
                    tipo = request.getParameter("tipo");
                    req = request.getParameter("req");
                    String dias1 = request.getParameter("dias");
                    dep = request.getParameter("dep");
                    String fecha = pl.HABILITAR_FECHA(tipo, req, dias1, dep);
                    rpta.put("fecha", fecha);
                    rpta.put("rpta", "1");
                    break;
            }
            Gson gson = new Gson();
            return gson.toJson(rpta);
        }
    }*/
}
