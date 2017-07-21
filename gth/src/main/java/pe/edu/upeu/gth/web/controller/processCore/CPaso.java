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
public class CPaso {
    /*@RequestMapping("/paso")
    public void Paso(HttpServletRequest request, HttpServletResponse response) throws IOException{
        PrintWriter out = response.getWriter();
        PasoDAO p = new PasoDAO();
        Map<String, Object> rpta = new HashMap<String, Object>();
        try {
            String opc = request.getParameter("opc");
            if (opc.equals("Listar_habilitados")) {
                String id = request.getParameter("proceso");
                List<Map<String, ?>> lista = p.List_Paso_Habilitado(id);
                rpta.put("rpta", "1");
                rpta.put("lista", lista);

            }
            if (opc.equals("Paso_Puesto")) {
                String id = request.getParameter("id");
                List<Map<String, ?>> lista = p.List_Paso_x_Puesto(id);
                rpta.put("rpta", "1");
                rpta.put("lista", lista);

            }
            if (opc.equals("Mantenimiento")) {
                response.sendRedirect("Vista/Proceso/Menu_Mantenimiento.jsp");
            }
            if (opc.equals("Eliminar")) {
                String id = request.getParameter("paso");
                p.DELETE_PASOS(id);
            }
            if (opc.equals("Registrar")) {
                String ID_PROCESO = request.getParameter("proceso");
                String DE_PASOS = request.getParameter("desc");
                String NU_PASOS = request.getParameter("num");
                String CO_PASOS = request.getParameter("cod");
                p.INSERT_PASOS(null, ID_PROCESO, DE_PASOS, NU_PASOS, CO_PASOS);
            }
            if (opc.equals("Update_nu_paso")) {

                int numero = Integer.parseInt(request.getParameter("num"));
                for (int i = 1; i <= numero-1; i++) {
                    String ID_PASO = request.getParameter("id" + i);
                    String NU_PASO = request.getParameter("numero" + i);
                    p.UPDATE_NU_PASO(ID_PASO, NU_PASO);
                }

            }
            if (opc.equals("Modificar")) {
                String ID_PASO = request.getParameter("id");
                String ID_PROCESO = request.getParameter("proceso");
                String DE_PASOS = request.getParameter("desc");
                String NU_PASOS = request.getParameter("num");
                String CO_PASOS = request.getParameter("cod");
                String ESTADO = request.getParameter("estado");
                p.UPDATE_PASOS(ID_PASO, ID_PROCESO, DE_PASOS, NU_PASOS, CO_PASOS, ESTADO);
                 rpta.put("rpta", "1");
            }
            if (opc.equals("Eliminar_PP")) {
                String idpp = request.getParameter("id");
                p.DELETE_PUESTO_PASO(idpp);
            }
            if (opc.equals("actualizar_estado")) {
                String id = request.getParameter("id");
                String estado = request.getParameter("estado");
                p.ESTADO_DETALLE_PUESTO(id, estado);
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
