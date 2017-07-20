/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author UPEU
 */
@Controller
public class HomeController {

    Map<String, Object> mp = new HashMap<>();

    @RequestMapping(value = "/")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/index")
    public String index() {
        return "index";
    }
    
    @RequestMapping(value = "/inicio")
    public String inicio() {
        return "vistas/inicio";
    }

    @RequestMapping(value = "/menu")
    public String menu(HttpServletRequest request, HttpServletResponse response) {
        String opc = request.getParameter("opc");
        HttpSession session = request.getSession(true);
        String pagina = "menu";
        try {
            if (opc == null) {
                pagina = "menu";
            } else {
                switch (opc) {
                    case "logout":
                        session.invalidate();
                        pagina = "login";
                        break;
                }
            }

        } catch (Exception e) {
            System.out.println("Error : " + e);
        }
        return pagina;
    }

    @RequestMapping(value = "/principal")
    public void principal(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        try {
            session.setAttribute("ID_ROL", request.getParameter("ID_ROL"));
            session.setAttribute("ID_MODULO", request.getParameter("ID_MODULO"));
            session.setAttribute("IDUSER", request.getParameter("IDUSER"));
            session.setAttribute("IDTR", request.getParameter("IDTR"));
            session.setAttribute("NOMBRE_AP", request.getParameter("NOMBRE_AP"));
            session.setAttribute("PUESTO_ID", request.getParameter("PUESTO_ID"));
            session.setAttribute("USER", request.getParameter("USER"));
            mp.put("rs", true);
        } catch (Exception e) {
            mp.put("rs", false);
            System.out.println("Error al obtener session : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }
}
