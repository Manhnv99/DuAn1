/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.awt.Image;
import java.io.File;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import javax.swing.ImageIcon;

/**
 *
 * @author ACER
 */
public class XImage {
    public static Image getAppIcon(){
        URL url=XImage.class.getResource("/cc/toy.png");
        return new ImageIcon(url).getImage();
    }
    
    public static boolean save(File src){
        File dst=new File("E:\\DuAnMau\\QuanLyDoChoi\\src\\main\\java\\icon",src.getName());
        try {
            Path from=Paths.get(src.getAbsolutePath());
            Path to=Paths.get(dst.getAbsolutePath());
            Files.copy(from, to,StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    public static ImageIcon read(String fileName){
        File path=new File("E:\\Group7-DuAn1\\QuanLyDoChoi\\src\\main\\resources\\icon\\",fileName);
        return new ImageIcon(path.getAbsolutePath());
    }
}
