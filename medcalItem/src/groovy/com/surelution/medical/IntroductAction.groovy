package com.surelution.medical

import com.surelution.whistle.core.NewsAttribute;

class IntroductAction extends SurelutionBaseAction {
	
	public boolean accept() {
		// TODO Auto-generated method stub
       return isMenu("intro")
	}
	
	public void execute() {
		NewsAttribute ne = new NewsAttribute()
		ne.add("医院简介", "徐汇区漕河泾街道社区卫生服务中心是标准化社区卫生服务中心，上海市医疗保险定点医院", rootPath+"/images/hospital.jpg","http://mp.weixin.qq.com/s?__biz=MzIxNzAyMjA5Ng==&mid=207059090&idx=1&sn=d657045db176c42dc182a05c9b27b663&scene=18#rd" )
		put(ne)
	}

}
