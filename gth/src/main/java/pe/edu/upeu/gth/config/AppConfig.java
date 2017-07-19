/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.config;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pe.edu.upeu.gth.dao.EmpleadoDAO;
import pe.edu.upeu.gth.dao.PrivilegioDAO;
import pe.edu.upeu.gth.dao.vacacionesDAO;
import pe.edu.upeu.gth.config.globalProperties;
import pe.edu.upeu.gth.dao.UsuarioDAO;

/**
 *
 * @author UPEU
 */
@Configuration
@ComponentScan(basePackages = "pe.edu.upeu.gth")
@EnableWebMvc
public class AppConfig extends WebMvcConfigurerAdapter {

    @Bean
    public ViewResolver getViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/**");
        registry.addResourceHandler("/jspf/**").addResourceLocations("/jspf/**");
    }

    @Bean
    public static DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("oracle.jdbc.OracleDriver");//driver-conexion//
        dataSource.setUrl("jdbc:oracle:thin:@" + globalProperties.HOSTNAME + ":" + globalProperties.PORT + ":" + globalProperties.SID + "");
        dataSource.setUsername(globalProperties.USER);//user-conexion//
        dataSource.setPassword(globalProperties.USER_PWD);//pass-conexion//
        return dataSource;
    }

    @Bean
    public EmpleadoDAO getLista_EmpleadoDAO() {
        return new EmpleadoDAO(getDataSource());
    }

    @Bean
    public PrivilegioDAO getPrivilegioDAO() {
        return new PrivilegioDAO(getDataSource());
    }

    @Bean
    public vacacionesDAO getvacacionesDAO() {
        return new vacacionesDAO(getDataSource());
    }
    
    @Bean
    public UsuarioDAO getUsuarioDAO() {
        return new UsuarioDAO(getDataSource());
    }

}
