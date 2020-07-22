const Service = require('../services/post.service')
config = require('../configs/app')


const methods = {
    async onGetAll(req, res) {
        try {
            let result = await Service.find(req)
            res.success(result);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },

    async onGetById(req, res) {
        try {
            let result = await Service.findById(req.params.id)
            res.success(result);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },
  

    async onInsert(req, res) {
        try {
            job_public_id = req.params.id
            let result = await Service.insert(req.body , job_public_id)
            res.success(result, 201);
        } catch (error) {
            res.error(error.message, error.status)
        }

    },

    async onUpdate(req, res) {
        try {
            job_public_id = req.params.id
            let Id = await Service.findIdByJobPublicId(job_public_id)
            await Service.update(Id,req.body)
            res.success('success');
        } catch (error) {
            res.error(error.message, error.status)
        }
    },
    async onPatch(req, res) {
        try {
            job_public_id = req.params.id
            let result = await Service.patch(req.body , job_public_id)
            res.success(result);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },
    async onDelete(req, res) {
        try {
            job_public_id = req.params.id
            let Id = await Service.findIdByJobPublicId(job_public_id)
            await Service.delete(Id)
            res.success('success', 204);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },


    onRegister(req, res) {
        res.success({ page: 'login' })
    }

}

module.exports = {...methods }