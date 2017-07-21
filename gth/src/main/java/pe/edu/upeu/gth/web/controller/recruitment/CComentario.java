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
public class CComentario {

    /*private static final long serialVersionUID = 1L;

    @RequestMapping("/comentario")
    public void Comentario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Comentario_DGPDAO x = new Comentario_DGPDAO();
        String opc = request.getParameter("opc");
        HttpSession sesion = request.getSession(true);
        String idu = (String) sesion.getAttribute("IDUSER");*/
        /*ESTO NO try {*/
        /*if (opc.equals("COMENTAR")) {
            String ID_COMENTARIO_DGP = null;
            String ID_DGP = request.getParameter("IDDETALLE_DGP");
            String ID_AUTORIZACION = request.getParameter("ID_AUTORIZACION");
            String CM_COMENTARIO = request.getParameter("COMENTARIO");
            String FE_CREACION = null;
            String US_MODIFICACION = null;
            String FE_MODIFICACION = null;
            String ES_COMENTARIO_DGP = "1";
            x.INSERT_COMENTARIO_DGP(ID_COMENTARIO_DGP, ID_DGP, ID_AUTORIZACION, CM_COMENTARIO, idu, FE_CREACION, US_MODIFICACION, FE_MODIFICACION, ES_COMENTARIO_DGP);
            sesion.setAttribute("List_Comentario_DGP", x.List_Comentario_DGP(ID_DGP));
            response.sendRedirect("Vista/Dgp/Comentario/Reg_Comentario.jsp?iddgp=" + ID_DGP);
        }
        if (opc.equals("Comentar_Dgp")) {

            String iddgp = request.getParameter("iddgp");
            sesion.setAttribute("List_Comentario_DGP", x.List_Comentario_DGP(iddgp));
            response.sendRedirect("Vista/Dgp/Comentario/Reg_Comentario.jsp?iddgp=" + iddgp);
        }*/

        /*ESTO NO } finally {
         out.close();
         }*/
        /*String iddgp = request.getParameter("iddgp");
        String cometario = request.getParameter("coment");
        response.setContentType("application/json");
        response.setHeader("Cache-control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "-1");
        Map<String, Object> rpta = new HashMap<String, Object>();*/

        /* ESTO NO if (opc.equals("COMENTAR")) {
            String ID_COMENTARIO_DGP = null;
            String ID_DGP = iddgp;
            String ID_AUTORIZACION = request.getParameter("ID_AUTORIZACION");
            String CM_COMENTARIO = cometario;
            String FE_CREACION = null;
            String US_MODIFICACION = null;
            String FE_MODIFICACION = null;
            String ES_COMENTARIO_DGP = "1";
            x.INSERT_COMENTARIO_DGP(ID_COMENTARIO_DGP, ID_DGP, ID_AUTORIZACION, CM_COMENTARIO, idu, FE_CREACION, US_MODIFICACION, FE_MODIFICACION, ES_COMENTARIO_DGP);
        }*/
        /*if (opc.equals("list")) {
            rpta.put("List_Comentarios", x.List_Comentario_DGP(iddgp));
            Gson gson = new Gson();
            out.print(gson.toJson(rpta));
            out.flush();
            out.close();
        }
    }*/
}
