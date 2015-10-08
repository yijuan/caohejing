package com.surelution.medical

import java.text.SimpleDateFormat;

class DealRemindController {
	
    def index() { }
	
	def dealRemind(){
		def injection = true
		def userName = params.userName
		def sex = params.sex
		
		def birthday = params.myDate
		
		def injectTime =  params.injectDate
		
		def vaccine = params.vaccineName
		
		if(injectTime==null && injectTime.equals("") && vaccine==null && vaccine.equals("")){
			 injection = false
		}
	   
		def vacc = Vaccine.findByName(vaccine)
		
		Child child = new Child()
		child.childName = userName
		child.sex = sex
		child.borthdate = birthday
		child.injection = injection
		child.injectTime = injectTime
		child.vaccine = vacc
		child.save()
		
		redirect(controller:'Remind',action:'addChild')
	}
	
}
