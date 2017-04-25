package com.zxxz.ssh.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;


public class FileToText {
	//private StringBuffer sBuffer;

	public  String  textToFile(final String strFilename)
    { 
    	
    	try{
    		File fileText=new File(strFilename);
    		
    		if(!fileText.exists()||fileText.isDirectory())
    		{
    			
    			
    			throw new FileNotFoundException();
    		}
    		
    		
    		
  
    		FileReader  fileReader=new FileReader(fileText);
        	BufferedReader bufferedReader =new BufferedReader(fileReader);
    		
    	//	sBuffer = null;
    	    String temp="";   
    		temp=bufferedReader.readLine();
    	//	System.out.println(temp);
    		String reString="";
    		
    		while(temp!=null)
    		{
    			//sBuffer.append(temp);
    			reString+=temp;
    			temp=bufferedReader.readLine();
    			
    		}
    		
    		//bufferedReader.close();
    		
    		System.out.println("内容读取完成");
    		
    		//String strBuffer=sBuffer.toString();
    		
    		return reString;
    		
    	}
    	catch (IOException e) {
			// TODO: handle exception
		e.printStackTrace();
    	}
    	
    	return "writeError";
    }
}
