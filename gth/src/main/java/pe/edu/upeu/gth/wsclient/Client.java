/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.wsclient;

import org.springframework.web.client.RestTemplate;

/**
 *
 * @author Leandro Burgos
 */
public class Client {

    RestTemplate rs = new RestTemplate();
    String sesion="";
    String url = "http://localhost:8087/TALENTO_HUMANO/webresources/authorization";

    public String getSessionJson() {        
        sesion = rs.getForObject(url, String.class);
        return sesion;
    }

}
