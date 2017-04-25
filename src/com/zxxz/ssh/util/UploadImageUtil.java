package com.zxxz.ssh.util;

import java.io.File;  
import java.io.IOException;  
import java.text.DateFormat;  
import java.text.SimpleDateFormat;  
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;


public class UploadImageUtil {  
    
    
    //  copy文件到项目的movieinfo文件夹下  
    public static String UploadImage(File img,String fileName) throws IOException{  
          
        String imgFileName = getRandomName();  
        String imgFileFormats = getFileFormats(fileName);  
        String uploadPath = ServletActionContext.getServletContext().getRealPath("/movieinfo");  
        File file= new File(uploadPath+"/"+imgFileName+"."+imgFileFormats);  
       
          FileUtils.copyFile(img, file);
        // FileUtils.copyFile(img,file);  
        return imgFileName;  
    }  
      
    //   判断文件格式  
    public static boolean checkImageFormats(String fileName){  
        boolean boo = false;  
        String formats = getFileFormats(fileName);  
        if(formats.equals("png")||formats.equals("jpg")||formats.equals("jpeg")){  
            boo = true;  
        }  
        return boo;  
    }  
    //  获取文件格式  
    public static String getFileFormats(String fileName){  
        String fileNameArray[] = fileName.split("\\.");  
        String formats = fileNameArray[fileNameArray.length-1];  
        return formats;  
    }  
      
    //  获取20位随机文件名  
    public static String getRandomName(){  
          
        double random = Math.random();  
        String randomString = Double.toString(random);  
        Date date = new Date();  
        DateFormat df = new SimpleDateFormat("yyMMddhhmmss");  
        return df.format(date)+randomString.substring(2,10);  
    }  
      
  
}  