const Service = require('../services/image.service')
let upload = require('../configs/multer')
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
            job_public_id = req.params.id
            let Id = await Service.findIdByJobPublicId(job_public_id)
            let result = await Service.findById(Id)
            res.success(result);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },
    async Onupload(req, res) {
        return new Promise(async(resolve, reject) => {
            await upload(req, res, function(err) {
                try {
                    if (err){
                    }else{
                        job_public_id = req.body.job_public_id
                        let Jsondata = {};
                        let i = (Object.keys(req.files).length)
                        for (let begin = 0; begin < i; begin++) {
                            img = 'http://' + config.hostaddress + ':' + config.port + '/static/' + req.files[begin].filename
                            Jsondata[req.files[begin].fieldname] = img
                        }
                        resolve(Jsondata)
                    }}catch{
                        reject(error)
                    }
                })

            })

    },
    async onInsert(req, res) {
        try {
            let upload = await methods.Onupload(req, res)
            let result = await Service.insert(upload , req.params.id)
            res.success(result, 201);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },


    async onUpdate(req, res) {
        try {
            job_public_id = req.params.id
            let Id = await Service.findIdByJobPublicId(job_public_id)
            await Service.update(Id, req.body)
            res.success('success');
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




}

module.exports = {
    ...methods
}