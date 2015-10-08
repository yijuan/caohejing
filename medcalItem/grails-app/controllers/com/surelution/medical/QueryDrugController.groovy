package com.surelution.medical

import com.surelution.query.Drug;

class QueryDrugController {

    def index() { }
	
	def queryDrug(){
		def drugName = params.drugName
		def drugList
		
		if(drugName)
		   drugList = Drug.findAllByDrugName(drugName)
	    if(drugName && !drugList) {
		   flash.message = "您输入的内容没有找到"
	    }
		 
	    [drugList:drugList]
		
	}
}
