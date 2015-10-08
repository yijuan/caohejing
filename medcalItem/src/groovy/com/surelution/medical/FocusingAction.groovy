package com.surelution.medical

import com.surelution.whistle.core.Attribute;
import com.surelution.whistle.core.NewsAttribute;

class FocusingAction extends SurelutionBaseAction{
	
	@Override
	public boolean accept() {
		getParam("MsgType") == "event" && getParam("Event") == "subscribe"
	}
	
	@Override
	public void execute() {
		NewsAttribute ne = new NewsAttribute()
		ne.add("欢迎关注我们", "", rootPath+"/images/hospital.jpg","http://mp.weixin.qq.com/s?__biz=MzIxNzAyMjA5Ng==&mid=207059090&idx=1&sn=d657045db176c42dc182a05c9b27b663&scene=18#rd")	
		put(ne)
	}

}
