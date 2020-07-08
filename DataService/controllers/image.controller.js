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
            project_pair_key = req.params.id
            let Id = await Service.findIdByProjectKey(project_pair_key)
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
                    if (err) {
                        console.log(err)
                    } else {
                        project_pair_key = req.body.project_pair_key
                        let json = {};
                        let key = 'project_pair_key';
                        let arr = [];
                        let jsonImg = {};
                        let i = (Object.keys(req.files).length)
                        for (let begin = 0; begin < i; begin++) {
                            img = 'http://' + config.hostaddress + ':' + config.port + '/static/images/' + req.files[begin].filename
                            jsonImg[req.files[begin].fieldname] = img
                        }
                        arr.push(jsonImg)
                        if (project_pair_key === undefined) {
                            res.error('No project Pair Key', 500)
                        }

                        json[key] = project_pair_key;
                        let key2 = 'data'
                        json[key2] = {
                            'Image': arr
                        }

                        resolve(json)
                    }

                } catch (error) {
                    reject(error)
                }

            })

        })

    },

    async onInsert(req, res) {
        try {
            let upload = await methods.Onupload(req, res)
            let result = await Service.insert(upload)
            res.success(result, 201);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },


    async onUpdate(req, res) {
        try {
            project_pair_key = req.params.id
            let Id = await Service.findIdByProjectKey(project_pair_key)
            await Service.update(Id, req.body)
            res.success('success');
        } catch (error) {
            res.error(error.message, error.status)
        }
    },

    async onDelete(req, res) {
        try {
            project_pair_key = req.params.id
            let Id = await Service.findIdByProjectKey(project_pair_key)
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