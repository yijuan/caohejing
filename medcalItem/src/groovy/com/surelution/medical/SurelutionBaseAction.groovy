package com.surelution.medical

import static com.surelution.whistle.core.Attribute.KEY_Content
import static com.surelution.whistle.core.Attribute.KEY_CreateTime
import static com.surelution.whistle.core.Attribute.KEY_FromUserName
import static com.surelution.whistle.core.Attribute.KEY_MsgType
import static com.surelution.whistle.core.Attribute.KEY_ToUserName
import grails.util.Holders

import javax.servlet.ServletRequest

import com.surelution.whistle.core.Attribute
import com.surelution.whistle.core.BaseAction


abstract class SurelutionBaseAction extends BaseAction {
	
	final public String getRootPath() {
		return Holders.config.grails.serverURL;
	}
	
	final public void preExecute() {
		String openId = getParam(KEY_FromUserName)
		
		Set<String> paramNames = paramNames()

		paramNames.remove(KEY_Content)
		paramNames.remove(KEY_CreateTime)
		paramNames.remove(KEY_FromUserName)
		paramNames.remove("MsgId")
		paramNames.remove(KEY_MsgType)
		paramNames.remove(KEY_ToUserName)
	}
}
