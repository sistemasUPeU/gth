/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Leandro Burgos
 */
@Controller
public class MainController {

    @RequestMapping(value = "/")
    public ModelAndView Logueo(ModelAndView model, HttpServletRequest resquest, HttpServletResponse response) {
        model.setViewName("index");
        return model;
    }

}
