package com.surelution.medical

class ShowContentController {

    def index() { }
	
	def showPrecaution(Long id){ 
	   def ehealth = Ehealth.get(id)
	   [ehealth:ehealth]
	}
	
	def showDisease(Long id){
		def ehealth = Ehealth.get(id)
		[ehealth:ehealth]
	}
	
	def showHealthcare(Long id){
		def ehealth = Ehealth.get(id)
		[ehealth:ehealth]
	}
	
	def showMedisine(Long id){
		def ehealth = Ehealth.get(id)
		[ehealth:ehealth]
	} 
}
