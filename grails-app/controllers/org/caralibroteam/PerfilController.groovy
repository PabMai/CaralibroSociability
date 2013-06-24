package org.caralibroteam

import java.security.MessageDigest
import org.caralibroteam.auth.Person
import org.springframework.dao.DataIntegrityViolationException

import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.commons.CommonsMultipartFile
import org.springframework.web.multipart.*

import grails.plugins.springsecurity.Secured
@Secured('IS_AUTHENTICATED_FULLY')

class PerfilController {

	def springSecurityService
	
    def index() {
		
		if(params.id != null) {
			redirect(action: "show", id: params.id)
			return	
		}
		
		def userInstance = Person.get(springSecurityService.principal.id);
		return [userInstance:userInstance]
		
	}
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[userInstanceList: Person.list(params), userInstanceTotal: Person.count()]
	}
	
	def show(Long id) {
		def userInstance = Person.get(id)
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), id])
			//redirect(action: "list")
			return
		}

		[userInstance: userInstance]
	}
	
	def update(){
		
		def userInstance= Person.get(springSecurityService.principal.id);
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), id])
			redirect(action: "index")
			return
		}
		userInstance.username = params.getAt('username')
		if(params.password!="")
		{
			userInstance.password = params.getAt('password')
		}
		
//		userInstance.properties = params
		userInstance.nombre=params.getAt('nombre')
		userInstance.apellido=params.getAt('apellido')
		userInstance.email = params.getAt('email')
		userInstance.fechaNacimiento = params.getAt('nacimiento')
		userInstance.sexo = params.getAt('sexo')
		if (!userInstance.save(flush: true)) {
			render(view: "index", model: [userInstance: userInstance])
			return
		}
		//userInstance.save(flush: true)
		springSecurityService.reauthenticate userInstance.username
		
		flash.message = message(code: 'default.updated.message', args: [message(code: 'person.label', default: 'Person'), userInstance.id])
		redirect(action: "show", id: userInstance.id)
		
	}
	
	def compartirestado(){
		def userInstance= Person.get(springSecurityService.principal.id);
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), id])
			redirect(action: "index")
			return
		}
	
//		userInstance.estado = params.estado
//		if (!userInstance.save(flush: true)) {
//			render(view: "index", model: [userInstance: userInstance])
//			return
//		}
		
//		redirect(action: "show", id: userInstance.id)
		
		return [userInstance:userInstance]
	}
	
	def mensajear(){
		def userInstance= Person.get(springSecurityService.principal.id);
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), id])
			redirect(action: "index")
			return
		}
		
		//Mandamos el mensaje, deberia almacenarce en la tabla mensajes.
		
		return [userInstance:userInstance]
	}
	
	def pediramistad(Integer id) {
		def userInstance= Person.get(springSecurityService.principal.id);
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), id])
			redirect(action: "index")
			return
		}
		
		//Mandamos el pedido de amistad
		
		redirect(action: "show", id: userInstance.id)
	
	}
}
