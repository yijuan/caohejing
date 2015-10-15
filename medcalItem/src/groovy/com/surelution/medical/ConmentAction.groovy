package com.surelution.medical

import com.surelution.whistle.core.Attribute;

class ConmentAction extends SurelutionBaseAction{
    @Override    public boolean accept() {		getParam(Attribute.KEY_MsgType) == Attribute.Msg_Type_TEXT    }    @Override    public void execute() {    	def keyWord = getParam(Attribute.KEY_Content).trim()
		println keyWord		def title = Message.findByKeyWord(keyWord)
		println title
		if(title){
			 put(new Attribute(Attribute.KEY_Content, "${title.message}"))
		}else{
	         def message=Message.findByKeyWord("unified-response").message		     put(new Attribute(Attribute.KEY_Content, "${message}"))
		   }    }
}
