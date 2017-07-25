/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Alfa003
 */
public class FileInfo {
    private String name;
    private String path;
    private MultipartFile file;

    public FileInfo(String name, String path) {
        this.name = name;
        this.path = path;
    }

    public FileInfo(String name, String path, MultipartFile file) {
        this.name = name;
        this.path = path;
        this.file = file;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

   
    
    
}
