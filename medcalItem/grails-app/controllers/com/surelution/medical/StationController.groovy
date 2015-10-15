package com.surelution.medical

import grails.util.Holders;

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

class StationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [stationInstanceList: Station.list(params), stationInstanceTotal: Station.count()]
    }

    def create() {
        [stationInstance: new Station(params)]
    }

    def save() {
        def stationInstance = new Station(params)
        if (!stationInstance.save(flush: true)) {
            render(view: "create", model: [stationInstance: stationInstance])
			flash.message="站点名称不能为空！"
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'station.label', default: 'Station'), stationInstance.id])
        redirect(action: "show", id: stationInstance.id)
    }

    def show(Long id) {
        def stationInstance = Station.get(id)
        if (!stationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "list")
            return
        }
        
		def pic = StationPicture.findByStation(stationInstance)
        [stationInstance: stationInstance,pic:pic]
//		[stationInstance: stationInstance]
    }

    def edit(Long id) {
        def stationInstance = Station.get(id)
        if (!stationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "list")
            return
        }
       
        [stationInstance: stationInstance]
    }

    def update(Long id, Long version) {
        def stationInstance = Station.get(id)
        if (!stationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (stationInstance.version > version) {
                stationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'station.label', default: 'Station')] as Object[],
                          "Another user has updated this Station while you were editing")
                render(view: "edit", model: [stationInstance: stationInstance])
                return
            }
        }

        stationInstance.properties = params

        if (!stationInstance.save(flush: true)) {
            render(view: "edit", model: [stationInstance: stationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'station.label', default: 'Station'), stationInstance.id])
        redirect(action: "show", id: stationInstance.id)
    }

    def delete(Long id) {
        def stationInstance = Station.get(id)
        if (!stationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "list")
            return
        }

        try {
            stationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "show", id: id)
        }
    }
	
	
	def savePic(Long id){
			CommonsMultipartFile  stationPic = request.getFile('stationPic')
			def station = Station.get(id)
			if(stationPic && !stationPic.empty){
				def fileName = stationPic.getOriginalFilename()
    //		 def file = "/images/"
	//			def file="${Holders.config.grails.dynImage.rootPath}"
	//			file+=fileName
				//println file
				def sp = new StationPicture()
				sp.station = station
				sp.file = fileName
				sp.save(flush:true)
		
              stationPic.transferTo(new File("${Holders.config.grails.dynImage.rootPath}${fileName}"))
				
//			   def picList = StationPicture.findAllByStation(station)
			  // println picList.size()
//		       redirect(action:'show',id:id,picList:picList)	
			  redirect(action:'show',id:id)  
			}	
	}
	
	def deletePic(Long id){
		def station = Station.get(id)
		StationPicture sp = StationPicture.findByStation(station)
		//def sp = StationPicture.get(id)	
		try{
			sp.delete()
			redirect(action:"show",id:station.id)
		}catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'station.label', default: 'Station'), id])
            redirect(action: "show", id:station.id)
        }
	}
	
}
