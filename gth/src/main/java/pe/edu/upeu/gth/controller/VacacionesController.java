/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.controller;

import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.json.Json;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
    Map<String, Object> mp = new HashMap<>();
    public List<String> archi= new ArrayList<>();
    
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
    
    @RequestMapping(value = "/listar_vac")
     public ModelAndView lista(ModelAndView model){
//         List<Map<String, Object>> lista= aO.listar_empleado();
//         model.addObject("listar",lista);
         model.setViewName("vistas/vacaciones/Listar_vacaciones");
         return model;
    }
     
          /*EJEMPLO*/
     @RequestMapping(value = "/listar_vac_ejemplo")
     public ModelAndView ejemplo(ModelAndView model){
//         List<Map<String, Object>> lista= aO.listar_empleado();
//         model.addObject("listar",lista);
         model.setViewName("vistas/vacaciones/prueba");
         return model;
    }
     /*FIN EJEMPLO*/
     
     @RequestMapping(value = "/vac_emple", method = RequestMethod.POST)
    public void List_empleados(HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            mp.put("list", aO.listar_empleado());

        } catch (Exception e) {
            System.out.println("Error al listar empleados : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }
    
    @RequestMapping(value = "/turnh", method = RequestMethod.POST)
    public void List_vac(HttpServletRequest resquest, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession sesion = resquest.getSession(true);
        try {
            mp.put("pr", aO.listar_vacaciones("TRB-002756"));

        } catch (Exception e) {
            System.out.println("Error al listar privilegios : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }

    @Autowired
    ServletContext context;
    @RequestMapping(value = "/archivos", method = RequestMethod.POST)
    public ModelAndView Upload(@RequestParam("files") List<MultipartFile> file,ModelAndView model,HttpServletResponse response) throws IOException
    {
            
        if (!file.isEmpty()) {
            try {
                
                for (MultipartFile fi: file) {
                    String path=context.getRealPath("/WEB-INF/")+ File.separator + fi.getOriginalFilename();
                    File destFile= new File(path);
                    fi.transferTo(destFile);
                    archi.add(destFile.getName());
                    archi.add(destFile.getPath());
                    FilenameUtils fich= new FilenameUtils();
                    archi.add(FilenameUtils.getExtension(path));
                    archi.add(String.valueOf(destFile.length()));
                    
                    
                }
                
            } catch (IOException | IllegalStateException ec) {
                ec.getMessage();
                ec.printStackTrace();
            }
                   
        }     
        model.setViewName("vistas/vacaciones/Success");
        return model;
    }
    @RequestMapping(value ="/jarchivos", method = RequestMethod.POST)
    public void jarchiv(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            Gson g= new Gson();
            out.print(g.toJson(archi));
            out.flush();
        }
        
    }
}


