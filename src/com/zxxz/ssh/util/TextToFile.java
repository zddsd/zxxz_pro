package com.zxxz.ssh.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class TextToFile {
        public  String  textToFile(final String strFilename, final String strBuffer)
        { 
        	// StringBuffer stringBuffer=new StringBuffer(strBuffer);
        	try{
        		File fileText=new File(strFilename);
        		
        		if(!fileText.exists())
        		{
        			fileText.createNewFile();
        		}
        		
        		
        		
        		
        		FileWriter fileWriter=new FileWriter(fileText,true);
        		
        		BufferedWriter bufferedWriter =new BufferedWriter(fileWriter);
        		bufferedWriter.write(strBuffer);
        		bufferedWriter.close();
        		System.out.println("新闻内容持久化完成");
        		
        		return  "done";
        		
        	}
        	catch (IOException e) {
				// TODO: handle exception
			e.printStackTrace();
        	}
        	
        	return "writeError";
        }
}
