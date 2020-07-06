const Service = require('../services/post.service')
let upload = require('../configs/multer')

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

    async onInsert (req, res) {
       try{
            upload(req,res,function(err) {
               if(err){
                   console.log(err)
               }else{
                let arr = [];
                let i = (Object.keys( req.files).length)
                for (let begin = 0 ; begin < i ; begin ++ ){
                    arr.push(req.files[begin].filename)
                }
                if(req.body.project_pair_key === undefined){
                    res.error('No project Pair Keyy' , 500 )
                }
                
                let json = {};
                let key = 'project_pair_key';
                json[key] = req.body.project_pair_key;
                let key2 = 'data'
                json[key2] = {'img':arr}
                let result =  Service.insert(json)
                res.success(result, 201);
               }
            });

        }catch (err){
            try {
                let result = await Service.insert(req.body)
                res.success(result, 201);
            } catch (error) {
                res.error(error.message, error.status)
            }
           
        }

    //    try {
    //         let result = await Service.insert(req.body)
    //         res.success(result, 201);
    //     } catch (error) {
    //         res.error(error.message, error.status)
    //     }
    },

    async onUpdate(req, res) {
        try {
            await Service.update(req.params.id, req.body)
            res.success('success');
        } catch (error) {
            res.error(error.message, error.status)
        }
    },

    async onDelete(req, res) {
        try {
            await Service.delete(req.params.id)
            res.success('success', 204);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },

    async onLogin(req, res) {
        try {
            let result = await Service.login(req.body)
            res.success(result);
        } catch (error) {
            res.error(error.message, error.status)
        }
    },

    onRegister(req, res) {
        res.success({ page: 'login' })
    }

}

module.exports = {...methods }