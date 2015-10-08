package com.surelution.medical

import grails.util.Holders;

class DbMaintainController {

	
	//path:文件名
	//rootPath:磁盘存储地址
    def index() {
		if(params.sub) {
			def file = request.getFile('dbFile')
			if(file && !file.empty) {
				def dbFile = new DbFile()
				DbFile.findByEnabled(true).each {fl->fl.enabled = false}
				dbFile.enabled = true
				dbFile.save(flush:true)
				def path = dbFile.path
				
				file.transferTo(new File("${Holders.config.grails.dbFile.rootPath}${path}"))
				
				com.surelution.query.Constants.DB_FILE_PATH = "${Holders.config.grails.dbFile.rootPath}"+path
			}
		}
	}
}
