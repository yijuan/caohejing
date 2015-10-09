package com.surelution.medical

class Child {

    static constraints = {
		vaccine nullable:true
		injectTime nullable:true
    }
	
	String childName
	String sex
	Date borthdate
	boolean injection   //是否注射疫苗
	Vaccine vaccine  //注射过何种疫苗
	Date  injectTime  //注射疫苗时间
	
	
}
