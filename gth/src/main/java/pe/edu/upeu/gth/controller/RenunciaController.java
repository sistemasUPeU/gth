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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Leandro Burgos
 */
@Controller
public class RenunciaController {

    Map<String, Object> mp = new HashMap<>();
    
    @RequestMapping(value = "/renuncia") //redirecciones
    public String login() {
        return "vistas/renuncia/ejemplo";
    }

    @RequestMapping(value = "/ren", method = RequestMethod.POST)
    public void principal(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        try {
            switch (opc) {
                case "list":
                    break;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e);
        }

        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }
}
