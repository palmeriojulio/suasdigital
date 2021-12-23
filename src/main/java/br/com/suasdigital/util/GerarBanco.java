package br.com.suasdigital.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class GerarBanco {
	
	//JPA2
		public static void GeraDB() {
	    	
	    	EntityManagerFactory factory = Persistence.createEntityManagerFactory("suasdigital");
	    	factory.close();
		}	

}
