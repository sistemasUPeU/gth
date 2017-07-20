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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.gth.dao.RenunciaDAO;

/**
 *
 * @author Leandro Burgos
 */
@Controller
public class RenunciaController {

    @Autowired
    private RenunciaDAO rdao;

    Map<String, Object> mp = new HashMap<>();

    @RequestMapping(value = "/renuncia")
    public ModelAndView RedireccionRenuncia(ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        switch (opc) {
            case "attach":
                model.setViewName("vistas/renuncia/RAarchivos");
                break;
            case "status":
                model.setViewName("vistas/renuncia/RAarchivos");
                break;
            case "authorizationR":
                model.setViewName("vistas/renuncia/Rautorizar");
                break;
            case "authorizationA":
                model.setViewName("vistas/renuncia/Rautorizar");
                break;
            case "ejemplo":
                model.setViewName("vistas/renuncia/ejemplo");
                break;
        }
        return model;
    }

    @RequestMapping(value = "/renu", method = RequestMethod.POST)
    public void principal(HttpServletRequest request, HttpServletResponse response, ModelAndView model) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        try {
            switch (opc) {
                case "list":
                    mp.put("pr", rdao.listarEmpleados());
                break;
                case "Detalle":
                    String idTR = request.getAttribute("idT").toString();
                    model.setViewName("vistas/renuncia/RAarchivos");
                    mp.put("ls", rdao.DetalleEmp(idTR));
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
    
//     @RequestMapping(value = "/Det", method = RequestMethod.GET)
//      public ModelAndView DetalleEmp(HttpServletRequest request, HttpServletResponse response, ModelAndView model) throws IOException {
//        response.setContentType("application/json");
//        HttpSession session = request.getSession(true);
//        PrintWriter out = response.getWriter();
//        String opc = request.getParameter("opc");
//        try {
//            switch (opc) {
//                case "Detalle":
//                    String idTR = session.getAttribute("idT").toString();
//                    model.setViewName("vistas/renuncia/RAarchivos");
//                    mp.put("ls", rdao.DetalleEmp(idTR));
//                 break;
//            }
//        } catch (Exception e) {
//            System.out.println("Error : " + e);
//        }
//        Gson gson = new Gson();
//        out.println(gson.toJson(mp));
//        out.flush();
//        out.close();
//        return model;
//    }
}
