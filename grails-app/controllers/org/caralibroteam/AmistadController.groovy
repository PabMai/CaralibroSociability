package org.caralibroteam
import org.caralibroteam.auth.*

import grails.plugins.springsecurity.Secured

@Secured('IS_AUTHENTICATED_FULLY')
class AmistadController {

	def personInstanceList=Person.findAll();
    
	def index() { 
		return [personInstanceList:personInstanceList]
	}
	
}