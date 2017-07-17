/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Alfa003
 */
@Controller
public class VacacionesController {
    @RequestMapping(value = "/prog")
    public ModelAndView prog(ModelAndView model)
    {
        model.setViewName("vistas/vacaciones/prog_vaca");
        return model;
    }
    
    
}


