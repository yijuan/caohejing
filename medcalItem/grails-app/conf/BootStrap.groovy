import grails.util.Holders;

import com.surelution.medical.DbFile;

class BootStrap {

    def init = { servletContext ->
		def dbFile = DbFile.findByEnabled(true)
		if(dbFile){
		   com.surelution.query.Constants.DB_FILE_PATH = "${Holders.config.grails.dbFile.rootPath}"+dbFile.path
		}else{}
		
//		def testUser = new com.surelution.medical.User(username:'test',enabled:true,password:'test')
//		testUser.save(flush:true)
		
		
    }
    def destroy = {
    }
}
