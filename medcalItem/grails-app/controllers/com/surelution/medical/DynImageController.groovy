package com.surelution.medical

import grails.util.Holders;

class DynImageController {
    def path(Long id) {
		def station = Station.get(id)
	    def sp =StationPicture.findByStation(station)
		def filePath = "${Holders.config.grails.dynImage.rootPath}"+sp.file
		
		//println filePath
		def inputStream = new FileInputStream(filePath)
		response.outputStream << inputStream
	}
}
