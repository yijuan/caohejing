package com.surelution.medical

class RemindController {

    def index() { }
	
	def addChild(){
		
		def vaccineList = Vaccine.list()
		
		[vaccineList:vaccineList]
	
	}
}
