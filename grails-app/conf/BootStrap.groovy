import grails.plugins.springsecurity.SpringSecurityService;

//se necesita importar las clases creadas por el plugin
import org.caralibroteam.auth.*


class BootStrap {

	//instanciamos el servicio que nos brindo el plugin
	def springSecurityService
	
    def init = { servletContext ->
		
		if(!Person.count()) {
			//instanciamos un ROL
			def adminRole = new Authority(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Authority(authority: 'ROLE_USER').save(flush: true)
			
			//instanciamos un usuario
			def admin = new Person ( username: 'admin', 
									password: '1234', 
									enabled: true ,
									nombre: 'administrador' ,
									email: 'admin@live.com' ,
									sexo: 'm' 
									).save()
			
			def user1 = new Person ( username: 'ariel', 
									password: '1234', 
									enabled: true ,
									nombre: 'Ariel' ,
									apellido: 'Martin' ,
									email: 'ariel_martin80@hotmail.com' ,
									sexo: 'm'
									).save()
			
			def user2 = new Person ( username: 'carlos',
									password: '1234',
									enabled: true ,
									nombre: 'Carlos' ,
									apellido: 'Bravo' ,
									email: 'carlos.f.bravo@hotmail.com' ,
									sexo: 'm'
									).save()
			
			def user3 = new Person ( username: 'leandro',
									password: '1234',
									enabled: true ,
									nombre: 'Leandro' ,
									apellido: 'Kipildor' ,
									email: 'leandro_1980@live.com' ,
									sexo: 'm'
									).save()
									
			def user4 = new Person ( username: 'pablo',
									password: '1234',
									enabled: true ,
									nombre: 'Pablo' ,
									apellido: 'Maidana' ,
									email: 'jpabmai@hotmail.com' ,
									sexo: 'm'
									).save()
									
			def user5 = new Person ( username: 'rodolfo',
									password: '1234',
									enabled: true ,
									nombre: 'Rodolfo' ,
									apellido: 'Inturias' ,
									email: 'inturias_r@yahoo.com' ,
									sexo: 'm'
									).save()
									
			//con esta sentencia le atribuimos un ROL a un Usuario
			PersonAuthority.create admin, adminRole, true
			PersonAuthority.create user1, userRole, true
			PersonAuthority.create user2, userRole, true
			PersonAuthority.create user3, userRole, true
			PersonAuthority.create user4, userRole, true
			PersonAuthority.create user5, userRole, true

		}
    }
    
	def destroy = {
    }
}
