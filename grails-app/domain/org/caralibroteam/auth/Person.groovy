package org.caralibroteam.auth

import java.util.Date;

class Person {
	static hasMany = [eventos:org.caralibroteam.Evento]
	
	transient springSecurityService
	
	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String nombre
	String apellido
	String email
	String sexo
	Date fechaNacimiento
	
	static constraints = {
		username blank: false, unique: true
		password blank: false
		
		nombre (blank: false ,unique: false)
		apellido (blank: true , unique: false, nullable:true)
		email (blank: false ,email:true, unique: true)
		sexo (blank: false ,inList:['m','f'])
		fechaNacimiento (blank: true , unique: false , nullable:true)
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Authority> getAuthorities() {
		PersonAuthority.findAllByPerson(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
