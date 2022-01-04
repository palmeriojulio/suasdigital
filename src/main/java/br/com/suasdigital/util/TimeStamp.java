package br.com.suasdigital.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class TimeStamp {
	
	//dd/MM/yyyy
	public String Data() {		
	   String timestamp = null;	   
	   Calendar c = Calendar.getInstance();
	   SimpleDateFormat f = new SimpleDateFormat("dd/MM/yyyy");
	   timestamp = f.format(c.getTime()).toString();	   
	   return timestamp;   
	}	

	//yyyy-MM-dd
	public String DataUS() {		
	   String timestamp = null;	   
	   Calendar c = Calendar.getInstance();
	   SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
	   timestamp = f.format(c.getTime()).toString();	   
	   return timestamp;   
	}
	
	//yyyy
	public String Ano() {		
	   String timestamp = null;		   
	   Calendar c = Calendar.getInstance();
	   SimpleDateFormat f = new SimpleDateFormat("yyyy");
	   timestamp = f.format(c.getTime()).toString();		   
	   return timestamp;   
	}
	
	//yy
	public String Ano2() {		
	   String timestamp = null;			   
	   Calendar c = Calendar.getInstance();
	   SimpleDateFormat f = new SimpleDateFormat("yy");
	   timestamp = f.format(c.getTime()).toString();			   
	   return timestamp;   
	}
	
	//HH:mm:ss
	public String Hora() {		
	   String timestamp = null;	   
	   Calendar c1 = Calendar.getInstance();
	   SimpleDateFormat f = new SimpleDateFormat("HH:mm:ss");	   
	   timestamp = f.format(c1.getTime()).toString();	   
	   return timestamp;   
	}
	
	//recebe 00/00/0000 retorna 0000-00-00.
	public String ConverteFormatoDataBRparaUS(String data) throws ParseException {			
		//Primeiro converte de String para Date		
		DateFormat formatUS = new SimpleDateFormat("dd/mm/yyyy");
		Date date = formatUS.parse(data);
		//Depois formata data
		DateFormat formatBR = new SimpleDateFormat("yyyy-mm-dd");
		String dateFormated = formatBR.format(date);		
		return dateFormated;
	}

	//recebe 0000-00-00 retorna 00/00/0000.
	public String ConverteFormatoDataUSparaBR(String data) throws ParseException {			
		//Primeiro converte de String para Date		
		DateFormat formatUS = new SimpleDateFormat("yyyy-mm-dd");
		Date date = formatUS.parse(data);
		//Depois formata data
		DateFormat formatBR = new SimpleDateFormat("dd/mm/yyyy");
		String dateFormated = formatBR.format(date);		
		return dateFormated;
	}
	
	//recebe 0000-00-00 retorna 00/00/0000.
	public String ConverteFormatoDataFeriado(String data) throws ParseException {			
		//Primeiro converte de String para Date		
		DateFormat formatUS = new SimpleDateFormat("yyyy-mm-dd");
		Date date = formatUS.parse(data);
		//Depois formata data
		DateFormat formatBR = new SimpleDateFormat("dd/mm");
		String dateFormated = formatBR.format(date);		
		return dateFormated;
	}
	
	//data por extenso ex.: 00 de mês de 0000.
	public String DataExtenso() {		
		Date data =  new Date();
		Locale local = new Locale("pt","BR");
		DateFormat dateFormat = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy",local); 		
		return dateFormat.format(data);
	}
	
	//data por extenso ex.: 00 de mês de 0000.
	public String DataHora() {		
		Date data =  new Date();
		Locale local = new Locale("pt","BR");
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss",local); 		
		return dateFormat.format(data);
	}
	
	//data por extenso ex.: 00/00/0000, Junho.
	public String DataExtenso(String data) throws ParseException {
		DateFormat formatUS = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatUS.parse(data);
		Locale local = new Locale("pt","BR");
		DateFormat dateFormat = new SimpleDateFormat("MMMM",local); 		
		return dateFormat.format(date);
	}
	
	//recebe 0000-00-00 retorna ex.: Segunda-feira.
	public String DiaPorDataUS(String data) throws ParseException {		
		Locale.setDefault (new Locale ("pt", "BR"));
		DateFormat df = new SimpleDateFormat ("yyyy-MM-dd");
		Date dt = df.parse (data);
		DateFormat df2 = new SimpleDateFormat ("EEEE");
		return df2.format (dt);
	}
	
	//recebe 00/00/0000 retorna ex.: Segunda-feira.
	public String DiaPorDataBR(String data) throws ParseException {			
		Locale.setDefault (new Locale ("pt", "BR"));
		DateFormat df = new SimpleDateFormat ("dd-MM-yyyy");
		Date dt = df.parse (data);
		DateFormat df2 = new SimpleDateFormat ("EEEE");		
		return df2.format (dt);
	}

}
