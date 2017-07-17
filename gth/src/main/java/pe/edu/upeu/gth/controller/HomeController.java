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
    public String validate() {
        return "Validate";
    }

    @RequestMapping(value = "/index")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/principal")
    public void principal(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        try {
            System.out.println(request.getParameter("IDUSER"));
            sesion.setAttribute("ID_ROL", request.getParameter("ID_ROL"));
            sesion.setAttribute("ID_MODULO", request.getParameter("ID_MODULO"));
            sesion.setAttribute("IDUSER", request.getParameter("IDUSER"));
            sesion.setAttribute("IDTR", request.getParameter("IDTR"));
            sesion.setAttribute("NOMBRE_AP", request.getParameter("NOMBRE_AP"));
            sesion.setAttribute("PUESTO_ID", request.getParameter("PUESTO_ID"));
            sesion.setAttribute("USER", request.getParameter("USER"));
            mp.put("rs", true);
        } catch (Exception e) {
            mp.put("rs", false);
            System.out.println("Error al obtener sesion : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }

    @RequestMapping(value = "/pr")
    public void asd(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            mp.put("respuesta", "okay");
        } catch (Exception e) {
            System.out.println("Error : " + e);
        }

        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }

}
