package com.surelution.medical



import org.junit.*
import grails.test.mixin.*

@TestFor(EhealthController)
@Mock(Ehealth)
class EhealthControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ehealth/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ehealthInstanceList.size() == 0
        assert model.ehealthInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ehealthInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ehealthInstance != null
        assert view == '/ehealth/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ehealth/show/1'
        assert controller.flash.message != null
        assert Ehealth.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ehealth/list'

        populateValidParams(params)
        def ehealth = new Ehealth(params)

        assert ehealth.save() != null

        params.id = ehealth.id

        def model = controller.show()

        assert model.ehealthInstance == ehealth
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ehealth/list'

        populateValidParams(params)
        def ehealth = new Ehealth(params)

        assert ehealth.save() != null

        params.id = ehealth.id

        def model = controller.edit()

        assert model.ehealthInstance == ehealth
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ehealth/list'

        response.reset()

        populateValidParams(params)
        def ehealth = new Ehealth(params)

        assert ehealth.save() != null

        // test invalid parameters in update
        params.id = ehealth.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ehealth/edit"
        assert model.ehealthInstance != null

        ehealth.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ehealth/show/$ehealth.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ehealth.clearErrors()

        populateValidParams(params)
        params.id = ehealth.id
        params.version = -1
        controller.update()

        assert view == "/ehealth/edit"
        assert model.ehealthInstance != null
        assert model.ehealthInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ehealth/list'

        response.reset()

        populateValidParams(params)
        def ehealth = new Ehealth(params)

        assert ehealth.save() != null
        assert Ehealth.count() == 1

        params.id = ehealth.id

        controller.delete()

        assert Ehealth.count() == 0
        assert Ehealth.get(ehealth.id) == null
        assert response.redirectedUrl == '/ehealth/list'
    }
}
