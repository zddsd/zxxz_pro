package com.zxxz.ssh.util;

import java.text.DecimalFormat;
import java.text.NumberFormat;

public class NumberUtils {
	public static double numberUtils(Double dou){
        NumberFormat   nf=new  DecimalFormat( "0.00 "); 
        dou = Double.parseDouble(nf.format(dou));
        return dou;
    }
}
