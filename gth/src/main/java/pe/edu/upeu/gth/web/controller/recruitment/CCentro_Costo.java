/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.web.controller.recruitment;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Cesar
 */
@Controller
public class CCentro_Costo {
    /*@RequestMapping("/centro_costo")
    public void Centro_Costo(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Map<String, Object> rpta = new HashMap<String, Object>();
        String opc = request.getParameter("opc");
        HttpSession sesion = request.getSession(true);
        String iddep = (String) sesion.getAttribute("DEPARTAMENTO_ID");
        Centro_CostosDAO cc = new Centro_CostoDAO();
        try {
            if (opc.equals("Listar_cc")) {
                List<Map<String, ?>> list = cc.List_centro_costo(iddep);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Listar_dir")) {
                List<Map<String, ?>> list = cc.Direccion_CC();
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Listar_dep")) {
                String id = request.getParameter("id_dir");
                List<Map<String, ?>> list = cc.Departamento_CC(id);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Listar_CC")) {
                String id = request.getParameter("id_dep");
                List<Map<String, ?>> list = cc.Centro_Costo_Dep(id);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Listar_centro_id")) {
                String id_dgp = request.getParameter("id_dgp");
                List<Map<String, ?>> list = cc.List_centr_id(id_dgp);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Listar_centro_id_dgp")) {
                String id_con = request.getParameter("id_dgp");
                List<Map<String, ?>> list = cc.List_centr_iddgp(id_con);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("listCentroCostoByIdContrato")) {
                String id_con = request.getParameter("idContrato");
                List<Map<String, ?>> list = cc.listCentroCostoByIdContrato(id_con);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Cargar_cc_DGP")) {
                String id = request.getParameter("id_c");
                List<Map<String, ?>> list = cc.Cargar_cc_dgp(id);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Lista_cc_area")) {
                String id = request.getParameter("id");
                List<Map<String, ?>> list = cc.listar_cc_area(id);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Lista_cc_seccion")) {
                String id = request.getParameter("id");
                List<Map<String, ?>> list = cc.listar_cc_seccion(id);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Eliminar_det_cc")) {
                String id_dcc = request.getParameter("id_dcc");
                cc.Eliminar_dcc(id_dcc);
                rpta.put("rpta", "1");
            }

        } catch (Exception e) {
            rpta.put("rpta", "-1");
            rpta.put("mensaje", e.getMessage());
        }
        Gson gson = new Gson();
        out.println(gson.toJson(rpta));
        out.flush();
        out.close();
    }*/
    
}
