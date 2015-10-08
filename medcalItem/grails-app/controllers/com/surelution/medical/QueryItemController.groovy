package com.surelution.medical


import com.surelution.query.Item

class QueryItemController {

    def index() {
	}
	
	def queryItem(){
		def name = params.itemName
		def itemList
		if(name)
			itemList = Item.findAllByName(name)
		if(name && !itemList) {
			flash.message = "您输入的内容没有找到"
		}
		[itemList:itemList]
	}

}
