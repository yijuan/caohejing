dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            driverClassName = "com.mysql.jdbc.Driver"
		    username = "root"
		    password = "1111"
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost/medical?useUnicode=true&characterEncoding=utf8"
			loggingSql = true

			validationQuery="SELECT 1"
			testOnBorrow=trueaaaaaaa
			testOnReturn=true
			testWhileIdle=true
			
			timeBetweenEvictionRunsMillis=1000 * 60 * 30
			numTestsPerEvictionRun=3
			minEvictableIdleTimeMillis=1000 * 60 * 30
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            driverClassName = "com.mysql.jdbc.Driver"
		    username = "root"
		    password = "1111"
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost/medical?useUnicode=true&characterEncoding=utf8"
			loggingSql = true

			validationQuery="SELECT 1"
			testOnBorrow=true
			testOnReturn=true
			testWhileIdle=true
			
			timeBetweenEvictionRunsMillis=1000 * 60 * 30
			numTestsPerEvictionRun=3
			minEvictableIdleTimeMillis=1000 * 60 * 30
            }
        }
    }

