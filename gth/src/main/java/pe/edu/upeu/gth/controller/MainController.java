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
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.gth.config.AppConfig;
import pe.edu.upeu.gth.dao.PrivilegioDAO;

/**
 *
 * @author Leandro Burgos
 */
@Controller
public class MainController {

    DataSource d = AppConfig.getDataSource();
    PrivilegioDAO pD = new PrivilegioDAO(d);
    Map<String, Object> mp = new HashMap<>();

    @RequestMapping(value = "/privilegios", method = RequestMethod.POST)
    public void Logueo(HttpServletRequest resquest, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            //mp.put("pr", pD.listarURLs("ROL-0019", "MOD-0002"));//ROL Y MODULO PARA VACACIONES -- ANALISTA DE CONTABILIDAD
            mp.put("pr", pD.listarURLs("ROL-0002", "MOD-0003"));//ROL Y MODULO PARA RENUNCIA Y ABANDONO -- SECRETARIA DE DEPARTAMENTO
        } catch (Exception e) {
            System.out.println("Error al listar privilegios : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }

}
