package org.caralibroteam

class Photo {
	String name
	String title
	Date dateUploaded
    static constraints = {
		name nullable: true , blank: true
		title blank: false
    }
}
