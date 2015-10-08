package com.surelution.medical

import grails.util.Holders;

import com.surelution.medical.Subscriber;
import com.surelution.medical.SubscriberCookie;
import com.surelution.whistle.core.Auth2Util;
import com.surelution.whistle.core.Auth2Util.AuthScope;
import com.surelution.whistle.push.UserInfo;

class DealBindController {

    def index() { }
	
	private Subscriber subscriber
	
	/**
	 * 自动登录
	 */
	def beforeInterceptor = {
		def userSn = request.getCookie('user-sn')
		
		subscriber = SubscriberCookie.findBySubscriberSn(userSn)?.subscriber
		
		if(!subscriber) {
			def requestUrl = request.requestURI
			def baseUrl = Holders.config.grails.serverURL
			def url = Auth2Util.buildRedirectUrl("${baseUrl}/subscriberPortal/autoLogin", requestUrl, AuthScope.BASE)
			response.deleteCookie('user-sn')
			redirect(url:url)
			return false
		}
		return true
	}
	
	

	
	def deal(){
		def userName = params.userName
		def medicalNum = params.medicalNum
		def idcard = params.idcard
		
		Subscriber subs = Subscriber.findByOpenId(subscriber.openId);
		
		subs.setMedicalCardNum(medicalNum)
		subs.setUserName(userName)
		subs.setIdCardNum(idcard)
		
		subs.save()
		
		redirect(controller:'Banding', action:'bindAccount')
	}
}
