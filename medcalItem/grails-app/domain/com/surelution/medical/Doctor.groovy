package com.surelution.medical

class Doctor {

    static constraints = {
		name blank:false
    }
	
	String name
	String introduction //医生简介
	Station station    
	
}
