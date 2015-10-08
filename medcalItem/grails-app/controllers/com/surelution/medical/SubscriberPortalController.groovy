package com.surelution.medical

import grails.util.Holders

import com.surelution.medical.Subscriber;
import com.surelution.medical.SubscriberCookie;
import com.surelution.whistle.core.Auth2Util

class SubscriberPortalController {

    def autoLogin() {
		def code = params.code
		def state = params.state
		
		def openId = Auth2Util.getOpenidByCode(code)
		def subscriber = Subscriber.findOrSaveByOpenId(openId)
		
		def sc = SubscriberCookie.populate(subscriber)
		
		
		response.setCookie('user-sn', sc.subscriberSn)
		redirect(url:"${Holders.config.grails.serverURL}${state}")
	}
}
