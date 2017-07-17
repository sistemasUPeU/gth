/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.gth.dao.vacacionesDAO;

/**
 *
 * @author Alfa003
 */
@Controller
public class VacacionesController {
    @Autowired
    private vacacionesDAO vaO;
   // @RequestMapping(value = "/prog")
  //  public ModelAndView prog(ModelAndView model)
  //  {
     //   model.setViewName("vistas/vacaciones/prog_vaca");
     //   return model;
//    }
    
    @RequestMapping(value = "/asig")
    public ModelAndView asignar(ModelAndView modelo)
    {
        List<Map<String, Object>> vacac= vaO.asignar_permiso("TRB-002756");
        modelo.addObject("vacac", vacac);
        modelo.setViewName("vistas/vacaciones/prog_vaca");
        return modelo;
    }
    
}


