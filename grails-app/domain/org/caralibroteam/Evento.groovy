package org.caralibroteam

import com.sun.beans.decoder.FalseElementHandler;

class Evento {
	static belongsTo = [person :org.caralibroteam.auth.Person];
	
	static constraints = {
		nombreEvento(blank:false, maxSize:30)
		descripcion(blank:false, maxSize:500)
		lugar(blank:false, maxSize:30)
		fecha(validator:{return(it >= new Date())})
		hora(blank:false, maxSize:5)
	}
	String nombreEvento;
	String descripcion;
	String lugar;
	Date fecha;
	String hora;
	
}