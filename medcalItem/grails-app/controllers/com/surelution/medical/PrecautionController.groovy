package com.surelution.medical

class PrecautionController {

    def index() { }
	
	//慢性病防治
	def precaution(){
      def precaution = Ehealth.findAllByType(Type.list()[1])
	  [preca:precaution]
	}
	//传染病预防
	def disease(){
	  def disease = Ehealth.findAllByType(Type.list()[0])
	  [dise:disease]
	}
	
	//妇幼保健
	def healthCare(){
	  def healthCare = Ehealth.findAllByType(Type.list()[2])
	  [health:healthCare]
	}
	
	//中医养生
	def medisine(){
	  def medisine = Ehealth.findAllByType(Type.list()[3])
	  [med:medisine]
	}
}
