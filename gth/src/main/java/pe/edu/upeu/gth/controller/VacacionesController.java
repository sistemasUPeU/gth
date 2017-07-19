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
    @Autowired
    private EmpleadoDAO aO;


    
    
    public String id_t="";

    
    @RequestMapping(value = "/asig",method = RequestMethod.GET)
    public ModelAndView asignar(ModelAndView modelo, HttpServletRequest request)
    {
        id_t=request.getParameter("id");
        modelo.setViewName("vistas/vacaciones/prog_vaca");
        return modelo;
    }
    @RequestMapping(value ="/returnjson", method = RequestMethod.POST)
    public void retorna(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
         List<Map<String, Object>> vacac= vaO.asignar_permiso(id_t);
         Gson gson = new Gson();
         
        out.println (gson.toJson(vacac));
        out.flush();
        out.close();
        
    }
    
    @RequestMapping(value = "/lista")
     public ModelAndView lista(ModelAndView model) {
         List<Map<String, Object>> lista= aO.listar_empleado();
         model.addObject("listar",lista);
         model.setViewName("vistas/vacaciones/Listar_vacaciones");
         
         return model;
    }
}


