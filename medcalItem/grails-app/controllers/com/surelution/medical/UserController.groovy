package com.surelution.medical

import org.springframework.dao.DataIntegrityViolationException

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def springSecurityService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }
	    def role  = UserRole.findAllByUser(userInstance).collect(){it.role}
		println role
		
		ArrayList<Role> roleList = new ArrayList()
	
		for(Role r : Role.list() ) { 
			if(!role.contains(r)) {
				roleList.add(r)
			}	  
		} 

        [userInstance: userInstance,role:role,roleList:roleList]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }
        
        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }
	
	
	def deleteRole(){
		def userId=Long.parseLong(params.userId)
		def roleId =Long.parseLong( params.roleId)
	
		UserRole ur = new UserRole()
		ur.setUser(User.get(userId))
		ur.setRole(Role.get(roleId))
		ur.delete()
		
		redirect(action: "show",id:userId)
	}
	
	def addRole(){
		def userId=Long.parseLong(params.userId)
		def roleId =Long.parseLong( params.roleId)
	
		UserRole ur = new UserRole()
		ur.setUser(User.get(userId))
		ur.setRole(Role.get(roleId))
		ur.save();
		
		redirect(action: "show",id:userId)
		
	}
	
	def showChangePwd(){
		
	}
	
	def changePwd(Long id){
		def newPw1 = params.newPw1
		def newPw2 = params.newPw2
		if(newPw1 != newPw2) {
			flash.message = message(code: 'password.and.confirmPassword.not.match')
			redirect(action:'showChangePw')
			return
		}
		def user = springSecurityService.currentUser
		user = User.findByUsername(user.username)
		if(user) {
			if(springSecurityService.passwordEncoder.isPasswordValid(user.password, params.password, null)) {
				user.password = newPw1
				user.save(flush:true)
				flash.message = message(code: 'password.change.succeed')
				redirect(action:'showChangePwd')
				return
			} else {
				flash.message = message(code: 'old.password.not.match')
				redirect(action:'showChangePwd')
				return
			}
		}}}

