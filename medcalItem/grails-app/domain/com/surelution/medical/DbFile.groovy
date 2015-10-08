package com.surelution.medical

class DbFile {

    static constraints = {	
    }
	
	static mapping = {
		path column:'_path'
		enabled column:'_enabled'
	}
	
	def beforeValidate() {
		if(!path) {
			path = UUID.randomUUID().toString()
		}
	}
	
	String path
	Date dateCreated
	Boolean enabled
}
