/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.web.controller.processCore;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Cesar
 */
@Controller
public class CProceso {
    /*@RequestMapping("/Proceso")
    public void proceso(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        ProcesoDAO p = new ProcesoDAO();
        Map<String, Object> rpta = new HashMap<String, Object>();
        DetalleReqProcesoDAO iddrp = new DetalleReqProcesoDAO();
        try {
            String opc = request.getParameter("opc");

            if (opc.equals("Mantenimiento")) {
                response.sendRedirect("Vista/Dgp/Plazo/Reg_Plazo_Dgp.jsp");

            }
            if (opc.equals("Registrar")) {
                String nom = request.getParameter("nom");
                String desc = request.getParameter("desc");
                p.create(nom, desc);
                rpta.put("rpta", "1");
            }
            if (opc.equals("Modificar")) {
                String idpro = request.getParameter("id");
                String nom = request.getParameter("nom");
                String desc = request.getParameter("desc");
                p.editprocess(idpro, nom, desc);
            }
            if (opc.equals("Listar")) {
                List<Map<String, ?>> lista = p.List_Proceso();
                rpta.put("rpta", "1");
                rpta.put("lista", lista);
            }
            if (opc.equals("ListarT")) {
                List<Map<String, ?>> lista = p.List_AllProceso();
                rpta.put("rpta", "1");
                rpta.put("lista", lista);
            }

            if (opc.equals("Listar_Pro_Paso_Id")) {
                String id_req = request.getParameter("id_req");
                String id_pro = request.getParameter("id_pro");
                String id_dir = request.getParameter("id_dir");
                String id_dep = request.getParameter("id_dep");
                String id_area = request.getParameter("id_area");
                String id_ti_planilla = request.getParameter("id_ti_planilla");
                List<Map<String, ?>> lista = p.List_Pro_Paso_Id(id_req, id_pro, id_dir, id_dep, id_area, id_ti_planilla);
                rpta.put("rpta", "1");
                rpta.put("lista", lista);
            }
            if (opc.equals("Eliminar")) {

            }
            if (opc.equals("statupdate")) {
                String id = request.getParameter("id");
                String es = request.getParameter("es");
                p.statupdate(id, es);
                System.out.println("All is right in controller " + es + " " + id);
            }
            if (opc.equals("insertDetalleReqProceso")) {
                DetalleReqProceso drp = new DetalleReqProceso();
                drp.setEsReqProceso("1");

                String area = "0";
                String departamento = "0";

                if (request.getParameter("area") .equals("")) {
                    area = "0";
                } else {
                    area = request.getParameter("area");
                }
                if (request.getParameter("departamento") .equals("")) {
                    departamento = "0";
                } else {
                    departamento = request.getParameter("departamento");
                }

                drp.setIdArea(area);
                drp.setIdDepartamento(departamento);
                drp.setIdDireccion(request.getParameter("direccion"));

                drp.setIdProceso(request.getParameter("proceso"));
                drp.setIdRequerimiento(request.getParameter("requerimiento"));
                rpta.put("serialize", drp);
                String id = iddrp.insertDetalleReqProceso(drp);
                rpta.put("id", CCriptografiar.Encriptar(id));
                rpta.put("status", true);
            }
        } catch (Exception e) {
            rpta.put("rpta", "-1");
            rpta.put("mensaje", e.getMessage());
        }
        Gson gson = new Gson();
        out.print(gson.toJson(rpta));
        out.flush();
        out.close();
    }*/
    }
