package com.surelution.medical

import grails.util.Holders;

class GuideController {

    def index() { }
	
	def guide(){
		def stalist = Station.list()
		[stalist:stalist]
	}
	
	def show(Long id){
		def station = Station.get(id)
		
		def sp = StationPicture.findByStation(station)
		
		def file = "${Holders.config.grails.dynImage.rootPath}"
		file+=sp.file
		
		def inputStream = new FileInputStream(file)
		response.outputStream << inputStream
		
	}
	
	def showPic(Long id){
		def station = Station.get(id)
		def doctors = Doctor.findAllByStation(station)
		[station:station,doctors:doctors]
	}
	
	def showDoctor(Long id){
		def doctor = Doctor.get(id)
		[doctor:doctor]
	}
	

	
}
