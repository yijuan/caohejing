package com.surelution.medical

import org.springframework.dao.DataIntegrityViolationException

class EhealthController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ehealthInstanceList: Ehealth.list(params), ehealthInstanceTotal: Ehealth.count()]
    }

    def create() {
        [ehealthInstance: new Ehealth(params)]
    }

    def save() {
        def ehealthInstance = new Ehealth(params)
        if (!ehealthInstance.save(flush: true)) {
            render(view: "create", model: [ehealthInstance: ehealthInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), ehealthInstance.id])
        redirect(action: "show", id: ehealthInstance.id)
    }

    def show(Long id) {
        def ehealthInstance = Ehealth.get(id)
        if (!ehealthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "list")
            return
        }

        [ehealthInstance: ehealthInstance]
    }

    def edit(Long id) {
        def ehealthInstance = Ehealth.get(id)
        if (!ehealthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "list")
            return
        }

        [ehealthInstance: ehealthInstance]
    }

    def update(Long id, Long version) {
        def ehealthInstance = Ehealth.get(id)
        if (!ehealthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ehealthInstance.version > version) {
                ehealthInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ehealth.label', default: 'Ehealth')] as Object[],
                          "Another user has updated this Ehealth while you were editing")
                render(view: "edit", model: [ehealthInstance: ehealthInstance])
                return
            }
        }

        ehealthInstance.properties = params

        if (!ehealthInstance.save(flush: true)) {
            render(view: "edit", model: [ehealthInstance: ehealthInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), ehealthInstance.id])
        redirect(action: "show", id: ehealthInstance.id)
    }

    def delete(Long id) {
        def ehealthInstance = Ehealth.get(id)
        if (!ehealthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "list")
            return
        }

        try {
            ehealthInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ehealth.label', default: 'Ehealth'), id])
            redirect(action: "show", id: id)
        }
    }
}
