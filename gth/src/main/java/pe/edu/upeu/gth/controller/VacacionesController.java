/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.json.Json;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.gth.dao.EmpleadoDAO;
import pe.edu.upeu.gth.dao.vacacionesDAO;

/**
 *
 * @author Alfa003
 */
@Controller
public class VacacionesController {
    @Autowired
    private vacacionesDAO vaO;
    private EmpleadoDAO aO;
    Map<String, Object> mp = new HashMap<>();
   // @RequestMapping(value = "/prog")
  //  public ModelAndView prog(ModelAndView model)
  //  {
     //   model.setViewName("vistas/vacaciones/prog_vaca");
     //   return model;
//    }
    
    @RequestMapping(value = "/asig")
    public ModelAndView asignar(ModelAndView modelo)
    {
        modelo.setViewName("vistas/vacaciones/prog_vaca");
        return modelo;
    }
    @RequestMapping(value ="/returnjson", method = RequestMethod.POST)
    public void retorna(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
         List<Map<String, Object>> vacac= vaO.asignar_permiso("TRB-002756");
         Gson gson = new Gson();
         
        out.println (gson.toJson(vacac));
        out.flush();
        out.close();
        
    }
    
    @RequestMapping(value = "/holiday")
    public ModelAndView Logueo(ModelAndView model, HttpServletRequest request, HttpServletResponse response) {
        String opc = request.getParameter("opc");
        switch (opc) {
            case "reg":
                List<Map<String, Object>> holiday= aO.listar_vacaciones("TRB-002756");
                model.addObject("holiday", holiday);
                model.setViewName("vistas/vacaciones/Worker");
                break;
            case "status":
                break;
        }
        return model;
    }  
    
}


