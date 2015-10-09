import grails.util.Holders;

import com.surelution.medical.DbFile;

class BootStrap {

    def init = { servletContext ->
		def dbFile = DbFile.findByEnabled(true)
		if(dbFile){
		   com.surelution.query.Constants.DB_FILE_PATH = "${Holders.config.grails.dbFile.rootPath}"+dbFile.path
		}else{}
		
		def testUser = new com.surelution.medical.User(username:'admin1',enabled:true,password:'admin1')
		testUser.save(flush:true)
		
		
    }
    def destroy = {
    }
}
